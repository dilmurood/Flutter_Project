import 'package:flutter/material.dart';
import 'package:flutter_project/screens/ProductDetails.dart';

class CustomContainer extends StatefulWidget {
  CustomContainer({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetails()));
        },
        child: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Image.asset(
              widget.path,
              width: 250,
              height: 200,
            )),
      ),
    );
  }
}
