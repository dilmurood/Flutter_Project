// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  // final String username;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  RegistrationScreen({super.key});

  //get some data from the previous screen
  //RegistrationScreen({super.key, required this.username});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/ProfileScreen',
      arguments: {
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'address': _addressController.text,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text(
          "Registration.",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Please fill the form!!',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Full Name',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            const Text(
              'email',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email',
              ),
            ),
            const Text(
              'password',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your password',
              ),
            ),
            const Text(
              'Phone number: ',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your phone',
              ),
            ),
            const Text(
              'Address',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your address',
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(300, 50)),
                child: const Text('Register'),
                onPressed: () {
                  _changeScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
