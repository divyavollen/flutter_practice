// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workspace/pages/first_page.dart';
import 'package:workspace/pages/home_page.dart';
import 'package:workspace/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/home': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
        });
  }
}
