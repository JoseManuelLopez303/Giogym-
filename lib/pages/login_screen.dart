import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:giogym/pages/register_screen.dart';

import 'welcome_screen.dart';
import '../constants.dart';
import '../components/general_button.dart';
import '../components/custom_toast.dart';
import '../components/input_data.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  bool spinnerProgress = false;
  final toast = FToast();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    toast.init(context);
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 24.0),
              InputData(
                'Escribe tu email...',
                Icons.email,
                TextInputType.emailAddress,
                false,
                _email,
              ),
              const SizedBox(height: 15),
              InputData(
                'Escribe tu contraseña',
                Icons.lock,
                TextInputType.visiblePassword,
                true,
                _password,
              ),
              const SizedBox(height: 32.0),
              GeneralButton(
                text: 'Ingresar',
                decoration: kDecorationGreen,
                color: Colors.lightBlueAccent,
                function: () async {
                  setState(() => spinnerProgress = true);
                  try {
                    email = _email.text;
                    password = _password.text;
                    if (email == '' || password == '') {
                      showBottomToast('porfavor llene todos los campos', 2);
                      setState(() => spinnerProgress = false);
                    }
                    final bool isValidEmail = EmailValidator.validate(email);
                    if (!isValidEmail) {
                      showBottomToast(' porfavor escriba un email correcto', 2);
                      setState(() => spinnerProgress = false);
                    }
                    try {
                      final existinUser =
                          await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                      if (existinUser != null) {
                        _email.clear();
                        _password.clear();
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      } else {
                        showBottomToast(' informacion invalida', 2);
                      }
                    } on FirebaseAuthException catch (e) {
                      showBottomToast(' usuario no encontrado', 2);
                      setState(() => spinnerProgress = false);
                    }
                    setState(() => spinnerProgress = false);
                  } on FormatException catch (e) {
                    print(e);
                  }
                },
              ),
              GeneralButton(
                text: 'Registrarse',
                decoration: kDecorationGreen,
                color: Colors.lightBlueAccent,
                function: () async {
                  setState(() => spinnerProgress = true);
                  try {
                    email = _email.text;
                    password = _password.text;
                    if (email == '' || password == '') {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                      setState(() => spinnerProgress = false);
                    }
                    final bool isValidEmail = EmailValidator.validate(email);
                    if (!isValidEmail) {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                      setState(() => spinnerProgress = false);
                    }
                    try {
                      final existinUser =
                          await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                      if (existinUser != null) {
                        _email.clear();
                        _password.clear();
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      } else {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      }
                    } on FirebaseAuthException catch (e) {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                      setState(() => spinnerProgress = false);
                    }
                    setState(() => spinnerProgress = false);
                  } on FormatException catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomToast(String message, int value) => toast.showToast(
      child: buildToast(message: message, value: value),
      gravity: ToastGravity.BOTTOM);
}
