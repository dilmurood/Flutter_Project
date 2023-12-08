import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project/PaymentApp.dart';

class Cart extends StatelessWidget {
  final double totalCost = 0.0;
  final int numberOfProducts = 0;

  const Cart({super.key});

  void _buyPressed(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PaymentApp()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            width: size.width * 0.9,
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
            width: size.width * 0.9,
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
            width: size.width * 0.9,
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
          Container(
            height: 100,
            width: size.width * 0.9,
            color: Colors.cyanAccent,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
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
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Row(children: <Widget>[
              Text(
                  "Total number of products: $numberOfProducts \nTotal cost: $totalCost")
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                _buyPressed(context);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    size.width * 0.7,
                    size.height * 0.05,
                  ),
                  shadowColor: Colors.red),
              child: const Text("BUY"))
        ],
      )),
    );
  }
}
