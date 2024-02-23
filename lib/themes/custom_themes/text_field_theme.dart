import 'package:flutter/material.dart';

class ETextFieldTheme{
  ETextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: const Color(0xFFB784B7),
    suffixIconColor: const Color(0xFFB784B7),

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),

    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),

    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Color(0xFFB784B7))
    ),

    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Color(0xFFB784B7))
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Color(0xFFB784B7))
    ),

    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2,color: Color(0xFFB784B7))
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2,color: Color(0xFFB784B7))
    ),

  );


  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: const Color(0xFF75ade7),
    suffixIconColor: const Color(0xFF75ade7),

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),

    floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),

    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Color(0xFF75ade7))
    ),

    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Color(0xFF75ade7))
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.white)
    ),

    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.red)
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2,color: Colors.orange)
    ),

  );
}