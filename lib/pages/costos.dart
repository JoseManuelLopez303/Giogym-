import 'package:flutter/material.dart';

class costos extends StatelessWidget {
  static String id = 'costos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      // drawer: LateralMenu(),
      body: Container(
        child: Image.asset('assets/img/Costos.png'),
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black26, width: 4),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
