import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:screenmirroring_app/screens/advanceopetion.dart';
import 'package:screenmirroring_app/screens/homeScreen.dart';
import 'package:screenmirroring_app/screens/mirrorguide.dart';
import 'package:screenmirroring_app/screens/mirrorscreen.dart';
import 'package:screenmirroring_app/screens/progressScreen.dart';
import 'package:screenmirroring_app/screens/selectTvScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[400],
      ),
      routes: {
        "/": (context) => const HomeScreen(),
        "/tvscreen": (context) => const SelectTvScreen(),
        "/options": (context) => const AdvanceOption(),
        "/progress": (context) => const ProgressScreen(),
        "/mirrorscreen": (context) => const ScreenMirroringScreen(),
        "/mirrorguide": (context) => const ScreenMirrorGuide(),
      },
    );
  }
}
