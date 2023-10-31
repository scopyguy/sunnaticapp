import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: const Color.fromARGB(255, 17, 16, 16),
      primary: Colors.grey.shade200,
      secondary: Color.fromARGB(255, 233, 38, 38),
      inversePrimary: Colors.grey.shade800,
    ),
    textTheme: ThemeData.light()
        .textTheme
        .apply(bodyColor: Colors.grey.shade800, displayColor: Colors.white));
