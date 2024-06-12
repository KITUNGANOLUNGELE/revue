import 'package:flutter/material.dart';
import 'package:revue_application/pages/login_page.dart';
import 'package:revue_application/pages/test_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/test": (context) => TestPage(),
      },
    );
  }
}
