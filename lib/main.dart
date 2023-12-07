import 'package:flutter/material.dart';
import 'package:flutter_project/AddItem.dart';
import 'package:flutter_project/AddItemShow.dart';
import 'package:flutter_project/LoginScreen.dart';
import 'package:flutter_project/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginScreen(),
      routes: {
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/AddItemShow': (context) => const AddItemShow(),

        // Other routes if any...
      },
    );
  }
}
