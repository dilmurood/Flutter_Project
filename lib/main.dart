import 'package:flutter/material.dart';
import 'package:flutter_project/AddItemShow.dart';
import 'package:flutter_project/ProfileScreen.dart';
import 'MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: ProfileScreen(),
      routes: {
        '/ProfileScreen' : (context) => ProfileScreen(),
        // Other routes if any...
      },
    );
  }
}
