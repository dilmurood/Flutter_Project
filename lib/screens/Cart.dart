import 'dart:core';

import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  // final String productName;

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void _buyPressed(BuildContext context) {
    Navigator.pushNamed(context, '/PaymentApp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "CART",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.black38,
          leading: const Icon(Icons.shopping_cart),
        ),
        backgroundColor: Colors.white,
         body: ListView.builder(
           itemCount: 25,
             itemBuilder: (BuildContext context, int index) {
               return Column(children: [
                 ListTile(
                   focusColor: Colors.amber,
                     tileColor: Colors.white12,
                     leading: const Icon(Icons.shopping_cart),
                     title: const Text(
                       "Product 1",
                       style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                     subtitle: const Text(
                       "Quantity: quantity",
                       style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                     trailing: Container(
                       decoration: BoxDecoration(
                         color: Colors.black38,
                         borderRadius: BorderRadius.circular(12)),
                       child: IconButton(
                           icon: const Icon(Icons.remove),
                           onPressed: () {}),
                     ),
                   )
                 ]);
               }
             ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            child: const Text('Buy',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            onPressed: () {
              _buyPressed(context);
            },
          ),
        ));
  }
}
