import 'package:flutter/material.dart';
import 'package:sunnaticapp/auth/register_login.dart';
import 'package:sunnaticapp/theme/dark_mode.dart';
import 'package:sunnaticapp/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
