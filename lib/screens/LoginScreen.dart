import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/screens/MainPage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool isLoginCorrect = false;
  User? user;
  Future<void> _sigIn(BuildContext context) async {
    try {
      UserCredential? user = await auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (user != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MainPage()));
      } else {
        print('Failed to log in with email and password');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    auth.authStateChanges().listen((event) {
      setState(() {
        user = event;
      });
    });
  }
  // login() async {
  //   var result = await db.login(Users(
  //       username: _emailController.text,
  //       password: _passwordController.text));
  //   if (result) {
  //     if (!mounted) return;
  //     Navigator.pushNamed(context, '/MainPage');
  //   } else {
  //     setState(() {
  //       isLoginCorrect = true;
  //     });
  //   }
  // }

  void _register(BuildContext context) {
    Navigator.pushNamed(context, '/RegisterationScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 100,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'PLEASE, LOG IN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: _emailController,
                        str: 'email',
                        isNotVisible: false,
                        icon: Icons.email,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        controller: _passwordController,
                        str: 'password',
                        isNotVisible: true,
                        icon: Icons.lock,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Remember me',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _sigIn(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(300, 50),
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Do not have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 111, 110, 110)),
                          ),
                          TextButton(
                            onPressed: () {
                              _register(context);
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      const Text('sign up Options:',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 12.0),
                      SignInButton(Buttons.googleDark, onPressed: () {
                        signInWithGoogle();
                      }),
                      const SizedBox(height: 12.0),
                      SignInButton(Buttons.facebook, onPressed: () {}),
                      const SizedBox(height: 12.0),
                      SignInButton(Buttons.microsoft, onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Future<User?> signInWithGoogle() async {
  try {
    GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
  } catch (e) {
    print("Error during Google sign-in: $e");
  }
}
