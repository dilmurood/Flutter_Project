import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/pages/AddItem.dart';
import 'package:flutter_project/pages/AddItemShow.dart';
import 'package:flutter_project/pages/Cart.dart';
import 'package:flutter_project/pages/MainPage.dart';
import 'package:flutter_project/pages/PaymentApp.dart';
import 'package:flutter_project/pages/ProfileScreen.dart';
import 'package:flutter_project/pages/RegisterationScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/LoginScreen.dart';
import 'pages/Welcome.dart';

int? isViewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: LoginScreen(),
      //home: isViewed != 0 ? const Welcome() : RegistrationScreen(),
      routes: {
        '/PaymentApp': (context) => const PaymentApp(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/AddItemShow': (context) => const AddItemShow(),
        '/RegisterationScreen': (context) => RegistrationScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/AddItem': (context) => AddItem(),
        '/MainPage': (context) => const MainPage(),
        '/Cart': (context) => const Cart(),
      },
    );
  }
}
