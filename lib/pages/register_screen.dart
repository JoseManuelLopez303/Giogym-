import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'welcome_screen.dart';
import '../constants.dart';
import '../components/general_button.dart';
import '../components/custom_toast.dart';
import '../components/input_data.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool spinner = false;
  String email = "";
  String password = "";
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                'Escribe tu Contraseña...',
                Icons.lock,
                TextInputType.visiblePassword,
                true,
                _password,
              ),
              const SizedBox(height: 32.0),
              GeneralButton(
                text: 'Registrar',
                color: Colors.blueAccent,
                decoration: kDecorationBlue,
                function: () async {
                  try {
                    email = _email.text;
                    password = _password.text;
                    setState(() => spinner = true);
                    final bool isValidEmail = EmailValidator.validate(email);
                    if (!isValidEmail) {
                      showBottomToast(' porfavor ingresa un email correcto', 2);
                      setState(() => spinner = false);
                    }
                    if (password.length < 6) {
                      showBottomToast(
                          ' La contraseña debe tener minimo 6 caracteres', 2);
                      setState(() => spinner = false);
                    }
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        _email.clear();
                        _password.clear();
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      }
                    } on FirebaseAuthException catch (e) {
                      switch (e.code) {
                        case "invalid-email":
                          showBottomToast(' email invalido', 2);
                          setState(() => spinner = false);
                          break;
                        case "email-already-in-use":
                          showBottomToast(' Email en uso', 2);
                          setState(() => spinner = false);
                          break;
                      }
                    }
                    setState(() => spinner = false);
                  } on FirebaseAuthException catch (e) {
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
