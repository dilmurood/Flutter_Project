// ignore: file_names
import 'package:flutter/material.dart';
import 'RegisterationScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  //add TextField Controller
  final TextEditingController _usernameController = TextEditingController();

  LoginScreen({super.key});

  void _register(BuildContext context) {
    Navigator.push(
        context, //
        MaterialPageRoute(builder: (_) => RegistrationScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'PLEASE, LOG IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          labelText: 'Username', border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, //
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(300, 50)),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        _register(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(300, 50)),
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: _launchURL,
                            child: Image.asset(
                              'images/google.png',
                              height: 100,
                              width: 100,
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
            ),
          ],
        ),
      ),
    );
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
