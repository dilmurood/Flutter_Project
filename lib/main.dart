import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/firebase_options.dart';
import 'package:flutter_project/screens/AddItem.dart';
import 'package:flutter_project/screens/AddItemShow.dart';
import 'package:flutter_project/screens/MainPage.dart';
import 'package:flutter_project/screens/PaymentApp.dart';
import 'package:flutter_project/screens/RegisterationScreen.dart';
import 'package:flutter_project/screens/Welcome.dart';
import 'package:flutter_project/screens/tabs/ProfileTab.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/LoginScreen.dart';

int? isViewed;
Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
      themeMode: ThemeMode.dark,
      home: isViewed != 0 ? const Welcome() : const RegistrationScreen(),
      routes: {
        '/PaymentApp': (context) => const PaymentApp(),
        '/ProfileScreen': (context) => const ProfileTab(),
        '/AddItemShow': (context) => const AddItemShow(),
        '/RegisterationScreen': (context) => const RegistrationScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/AddItem': (context) => AddItem(),
        '/MainPage': (context) => const MainPage(),
      },
    );
  }
}
