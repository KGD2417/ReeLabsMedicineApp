import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 22,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',);
  }

  static TextStyle headerTextFieldStyle(){
    return TextStyle(
      color: Colors.black,
      fontSize: 29,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',);
  }

  static TextStyle subHeaderTextFieldStyle(){
    return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',);
  }

  static TextStyle tagLineTextFieldStyle(){
    return TextStyle(
      color: Colors.black54,
      fontSize: 20,
      // fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',);
  }

  static TextStyle categoryTextFieldStyle(){
    return TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',);
  }
}