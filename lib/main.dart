import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginScreen(),
      routes: {
        '/MainScreen': (context) => MainScreen(),
        // Other routes if any...
      },
    );
  }
}
