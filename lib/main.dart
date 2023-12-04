import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'main_page.dart';

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
        '/main_page': (context) => main_page(),
        // Other routes if any...
      },
    );
  }
}
