// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/screens/MainPage.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  final _usernameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _phoneController = TextEditingController();

  final _addressController = TextEditingController();

  Future<void> _signUp() async {
    try {
      UserCredential? user = await auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainPage()));

      //adding to the firestore
      DocumentReference users = FirebaseFirestore.instance
          .collection('users')
          .doc('$_usernameController.text');

      await users.set({
        "address": _addressController.text,
        "password": _passwordController.text,
        "email": _emailController.text,
        "phoneNumber": _phoneController.text,
        "username": _usernameController.text
      });

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
                ),
                const Text(
                  'Address',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                CustomTextFormField(
                  controller: _addressController,
                  str: 'address',
                  isNotVisible: false,
                  icon: Icons.location_city,
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
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(300, 50)),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
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
