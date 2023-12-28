import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  
  final String str;
  final TextEditingController controller;
  final bool isNotVisible;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.str,
    required this.isNotVisible,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        mouseCursor: MaterialStateMouseCursor.clickable,
        controller: widget.controller,
        obscureText: widget.isNotVisible,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: 'Enter your ${widget.str}',
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Please enter your ${widget.str}';
          }
          return null;
        });
  }
}
