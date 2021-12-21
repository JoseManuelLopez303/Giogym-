import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF29b6f6);
const kLightBlue = Color(0xFF4fc3f7);
const kRedColor = Color(0xFFff9e9e);
const kOrangeColor = Color(0xFFffb288);
const kGreenColor = Color(0xFFaed581);
const kGrayColor = Color(0xFFa9a9a9);
const kGraySecondColor = Color(0xFF808080);

const kUnfinishedColors = [kOrangeColor, kRedColor];
const kFinishedColors = [kGreenColor, kGreenColor];
const kProgressColors = [kLightBlue, kPrimaryColor];
const kDisabledColors = [kGrayColor, kGraySecondColor];

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

final kMessageTextFieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color: Colors.white),
    borderRadius: BorderRadius.circular(50),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color: Colors.white),
    borderRadius: BorderRadius.circular(50),
  ),
  hintText: 'Type your message here...',
);

final kMessageContainerDecoration = BoxDecoration(
  color: Colors.grey.shade900,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
);

const kInputDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

final kDecorationGreen = BoxDecoration(
  gradient: const LinearGradient(
    colors: kFinishedColors,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
  boxShadow: [
    BoxShadow(
        color: Colors.green.withOpacity(0.4),
        blurRadius: 8,
        spreadRadius: 1,
        offset: const Offset(4, 4))
  ],
  borderRadius: const BorderRadius.all(
    Radius.circular(20),
  ),
);

final kDecorationBlue = BoxDecoration(
  gradient: const LinearGradient(
    colors: kProgressColors,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
  boxShadow: [
    BoxShadow(
        color: Colors.blue.withOpacity(0.4),
        blurRadius: 8,
        spreadRadius: 1,
        offset: const Offset(4, 4))
  ],
  borderRadius: const BorderRadius.all(Radius.circular(20)),
);
