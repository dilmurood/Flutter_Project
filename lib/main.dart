import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/AddItem.dart';
import 'package:flutter_project/AddItemShow.dart';
import 'package:flutter_project/Cart.dart';
import 'package:flutter_project/LoginScreen.dart';
import 'package:flutter_project/PaymentApp.dart';
import 'package:flutter_project/ProfileScreen.dart';
import 'package:flutter_project/RegisterationScreen.dart';
import 'package:flutter_project/MainPage.dart';
import 'package:flutter_project/Welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  isViewed = pref.getInt('Welcome');

  //screen does not rotate, it is fixed
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: isViewed != 0 ? const Welcome() : LoginScreen(),
      routes: {
        '/PaymentApp': (context) => const PaymentApp(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/AddItemShow': (context) => const AddItemShow(),
        '/RegisterationScreen': (context) => RegistrationScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/AddItem': (context) => AddItem(),
        '/MainPage': (context) => const MainPage(),
        '/Cart': (context) => Cart(),
      },
    );
  }
}
