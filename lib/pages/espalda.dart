import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';

class espalda extends StatelessWidget {
  static String id = 'espalda';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child:
            Image.asset('assets/img/Espalda.png', height: 10000, width: 15000),
        //padding: EdgeInsets.symmetric(vertical: 500, horizontal: 200),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.black26, width: 8),
            borderRadius: BorderRadius.circular(20)),
      )
          // body: _itemsCardOrder(context),
          ),
    );
  }
}
