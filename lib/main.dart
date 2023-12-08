import 'package:flutter/material.dart';
import 'package:flutter_project/AddItem.dart';
import 'package:flutter_project/AddItemShow.dart';
import 'package:flutter_project/Cart.dart';
import 'package:flutter_project/LoginScreen.dart';
import 'package:flutter_project/ProfileScreen.dart';
import 'package:flutter_project/RegisterationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Cart(),
      routes: {
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/AddItemShow': (context) => const AddItemShow(),
        // '/Cart' :(context) =>  Cart(),
        '/RegisterationScreen' :(context) =>  RegistrationScreen(),
        '/LoginScreen' :(context) =>  LoginScreen(),
        '/AddItem' :(context) =>  AddItem(),

        // Other routes if any...
      },
    );
  }
}
