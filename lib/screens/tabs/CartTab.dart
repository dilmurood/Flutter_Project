import 'dart:core';

import 'package:flutter/material.dart';

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  // final String productName;

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<CartTab> { 
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
          backgroundColor: Colors.greenAccent,
          leading: const Icon(Icons.shopping_cart),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ListView.builder(
            itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      
                      onTap: (){},
                      child: ListTile(
                        leading: Container(padding: EdgeInsets.all(10), child: Image.asset('images/laptop.png')), 
                        title: const Text("Product Name"),
                        subtitle: const Text("Price"),
                        ),
                    ),
                  )
                  ]);
                }
              ),
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
