// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/DatabaseHelper.dart';
import 'package:flutter_project/JSON/users.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  // final String username;
  final _usernameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _password2Controller = TextEditingController();

  final _phoneController = TextEditingController();

  // final _addressController = TextEditingController();
  final db = DatabaseHelper();

  signUp() async {
    var result = await db.createtUser(Users(
        username: _usernameController.text,
        password: _passwordController.text,
        email: _emailController.text,
        phone: _phoneController.text));
    if (result > 0) {
      if (!mounted) return;
      Navigator.pushNamed(
        context,
        '/ProfileScreen',
        arguments: {
          'name': _usernameController.text,
          'email': _emailController.text,
          'phone': _phoneController.text,
          'password': _passwordController.text,
        },
      );
    }
  }

  //get some data from the previous screen
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
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                CustomTextFormField(
                  controller: _passwordController,
                  str: 'password',
                  isNotVisible: true,
                ),
                const Text(
                  'Reenter Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                CustomTextFormField(
                  controller: _password2Controller,
                  str: 'password',
                  isNotVisible: true,
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
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(300, 50)),
                    child: const Text('Register'),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        signUp();
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
