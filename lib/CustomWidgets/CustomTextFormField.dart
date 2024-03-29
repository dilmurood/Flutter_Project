import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String str;
  final TextEditingController controller;
  final bool isNotVisible;
  final IconData icon;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.str,
    required this.isNotVisible,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        mouseCursor: MaterialStateMouseCursor.clickable,
        controller: controller,
        obscureText: isNotVisible,
        
        decoration: InputDecoration(
          prefixIconColor: Colors.black,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: 'Enter your $str',
          
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Please enter your $str';
          }
          return null;
        });
  }
}
