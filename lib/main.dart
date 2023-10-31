import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sunnaticapp/audio/audio.dart';
import 'package:sunnaticapp/audio/source.dart';
import 'package:sunnaticapp/theme/dark_mode.dart';
import 'package:sunnaticapp/theme/light_mode.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayer(audioDataSource),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
