import 'package:flutter/material.dart';
import 'package:giogym/pages/IMC.dart';
import 'package:giogym/pages/costos.dart';
import 'package:giogym/pages/informacion.dart';
import 'package:giogym/pages/productos.dart';
import 'package:giogym/pages/redes.dart';
import 'package:giogym/pages/rutinas.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        //drawer: LateralMenu(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => rutinas(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('rutinas')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => productos(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Productos')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => informacion(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Informacion')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => costos(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Costos')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => conversion(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('IMC')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 350, vertical: 35.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => redes(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Nuestras Redes Sociales')),
          ],
        )),
      ),
    );
  }
}
