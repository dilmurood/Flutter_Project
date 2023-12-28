import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/DatabaseHelper.dart';
import 'package:flutter_project/JSON/users.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //add TextField Controller
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isChecked = false;
  bool isLoginCorrect = false;

  final db = DatabaseHelper();

  login() async {
    var result = await db.login(Users(
        username: _usernameController.text,
        password: _passwordController.text));
    if (result) {
      if (!mounted) return;
      Navigator.pushNamed(context, '/MainPage');
    } else {
      setState(() {
        isLoginCorrect = true;
      });
    }
  }

  void _register(BuildContext context) {
    Navigator.pushNamed(context, '/RegisterationScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
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
                      controller: _usernameController,
                      str: 'username',
                      isNotVisible: false,
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      controller: _passwordController,
                      str: 'password',
                      isNotVisible: true,
                    ),
                    isLoginCorrect
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'incorrect password or username',
                              style: TextStyle(color: Colors.red.shade900),
                            ))
                        : const SizedBox(
                            height: 10,
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
                        login();
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
                    const Text('sign up with:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MouseRegion(
                            cursor: SystemMouseCursors
                                .click, // Set the cursor to indicate click
                            child: GestureDetector(
                              onTap: _launchURL,
                              child: Image.asset(
                                'images/google.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Image.asset(
                            'images/meta.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

_launchURL() async {
  final Uri url = Uri.parse('https://google.com');
  try {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    throw 'Could not launch $url: $e';
  }
}
