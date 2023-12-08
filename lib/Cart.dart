import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project/PaymentMethod.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  void _buyPressed(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const PaymentMethod()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CART",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.shopping_cart),
      ),
      backgroundColor: Colors.tealAccent,
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 100,
            width: 400,
            color: const Color.fromRGBO(33, 150, 243, 1),
            child: Row(children: <Widget>[
              const Icon(
                Icons.no_sim,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("+")),
              ElevatedButton(onPressed: () {}, child: const Text("-")),
            ]),
          ),
          Container(
            height: 100,
            width: 400,
            color: Colors.white,
            child: Row(children: <Widget>[
              const Icon(
                Icons.no_sim,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("+")),
              ElevatedButton(onPressed: () {}, child: const Text("-")),
            ]),
          ),
          Container(
            height: 100,
            width: 400,
            color: Colors.green,
            child: Row(children: <Widget>[
              const Icon(
                Icons.no_sim,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("+")),
              ElevatedButton(onPressed: () {}, child: const Text("-")),
            ]),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                _buyPressed(context);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 25), shadowColor: Colors.red),
              child: const Text("BUY"))
        ],
      )),
    );
  }
}
