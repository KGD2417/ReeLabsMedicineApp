import 'package:flutter/material.dart';

class EElevatedButtonTheme{
  EElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 3,
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFFfcbc5c),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      padding: const EdgeInsets.symmetric(vertical: 10),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Color(0xFFfcbc5c),
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          padding: const EdgeInsets.symmetric(vertical: 10),
          textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      )
  );
}