import 'package:flutter/material.dart';

const defSpacing = 16.0;
const kLightGrey = Color(0xFF6C6C6C);

const TextStyle kTitleStyle =
    TextStyle(color: Colors.white, fontSize: 28, fontFamily: 'Nunito', fontWeight: FontWeight.bold);
const TextStyle kSecTitleStyle = TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white);
const TextStyle kContentStyle = TextStyle(color: Colors.black, fontSize: 14);
const TextStyle kSmallTextStyle = TextStyle(color: Colors.white, fontSize: 13);
const TextStyle kCaptionTextStyle = TextStyle(color: kLightGrey, fontSize: 10);
const TextStyle kTinyTextStyle = TextStyle(fontSize: 12, color: Color(0xFFDEDEDE));

const mainDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromRGBO(115, 162, 106, 1), Color.fromRGBO(79, 140, 105, 1), Color.fromRGBO(61, 128, 106, 1)]));
