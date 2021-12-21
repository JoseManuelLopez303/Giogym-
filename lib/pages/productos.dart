import 'package:flutter/material.dart';

class productos extends StatelessWidget {
  static String id = 'productos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Image.asset('assets/img/productos.png',
            height: 10000, width: 15000),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.black26, width: 8),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
