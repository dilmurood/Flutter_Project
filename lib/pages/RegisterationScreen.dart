// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/DatabaseHelper.dart';
import 'package:flutter_project/JSON/users.dart';
import 'package:flutter_project/pages/MainPage.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  // final String username;
  final _usernameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _password2Controller = TextEditingController();

  final _phoneController = TextEditingController();

  // final _addressController = TextEditingController();
  final db = DatabaseHelper();
Future<void> _signUp() async {
    try {
      UserCredential? user = await auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (user != null && _formKey.currentState!.validate()) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                const MainPage()));
      } else {
        print('Failed to log in with email and password');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Username',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                CustomTextFormField(
                  controller: _usernameController,
                  str: 'username',
                  isNotVisible: false,
                  icon: Icons.person,
                  type: TextInputType.text,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                CustomTextFormField(
                  controller: _emailController,
                  str: 'email',
                  isNotVisible: false,
                  icon: Icons.email,
                  type: TextInputType.emailAddress,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                CustomTextFormField(
                  controller: _passwordController,
                  str: 'password',
                  isNotVisible: true,
                  icon: Icons.lock,
                  type: TextInputType.none,
                ),
                const Text(
                  'Confirm Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                CustomTextFormField(
                  controller: _password2Controller,
                  str: 'password',
                  isNotVisible: true,
                  icon: Icons.lock,
                  type: TextInputType.none,
                ),
                const Text(
                  'Phone Number ',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                CustomTextFormField(
                  controller: _phoneController,
                  str: 'phone number',
                  isNotVisible: false,
                  icon: Icons.phone,
                  type: TextInputType.number,
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(300, 50)),
                    child: const Text('Register', style: TextStyle(color: Colors.white),),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _signUp();
                      } else {
                        print('Form is not valid');
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
