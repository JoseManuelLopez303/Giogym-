import 'package:flutter/material.dart';
import 'package:giogym/pages/brazo.dart';
import 'package:giogym/pages/hombro.dart';
import 'package:giogym/pages/pecho.dart';
import 'package:giogym/pages/pierna.dart';

import 'espalda.dart';

class rutinas extends StatelessWidget {
  static String id = 'rutinas';
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
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 50.0),
                color: Colors.lightGreenAccent[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pierna(),
                    ),
                  );
                  setState(() {});
                },
                child: Text('Pierna')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hombro(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Hombro')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pecho(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Pecho')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => espalda(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Espalda')),
            Divider(),
            FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 400, vertical: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => brazo(),
                    ),
                  );
                  setState(() {});
                },
                color: Colors.lightGreenAccent[400],
                child: Text('Brazo')),
          ],
        )),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
