import 'package:flutter/material.dart';
import 'package:flutter_project/AddItemShow.dart';
import 'MainScreen.dart';
import 'AddItem.dart';
import 'AddItemShow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: AddItem(),
      routes: {
        '/AddItemShow' : (context) => AddItemShow(),
        // Other routes if any...
      },
    );
  }
}
