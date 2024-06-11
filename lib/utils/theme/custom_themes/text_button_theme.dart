import 'package:flutter/material.dart';

class TTextButtonTheme{

  TTextButtonTheme._();

  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        textStyle: const TextStyle(
      color: Colors.blue
    ),
      // backgroundColor: Colors.blue,
        foregroundColor: Colors.blue
    )
  );



  static TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: const TextStyle(
              color: Colors.blue
          ),
          // backgroundColor: Colors.blue,
        foregroundColor: Colors.blue
      )
  );
}