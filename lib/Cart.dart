import 'dart:math';

import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CART", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.shopping_cart),
        ),
      backgroundColor: Colors.tealAccent,
      body: Center(
          child: Column(
            children: <Widget>[  
              const SizedBox(height: 20,),
              Container(
                height: 100,
                width: 400,
                color: Colors.amber,
              ),
              const SizedBox(height: 20,),
              Container(
                height: 100,
                width: 400,
                color: Colors.black,
              ),
                 const SizedBox(height: 20,),
              Container(
                height: 100,
                width: 400,
                color: Colors.black,
              ),
                 const SizedBox(height: 20,),
              Container(
                height: 100,
                width: 400,
                color: Colors.black,
              ),
                 const SizedBox(height: 20,),
                 ElevatedButton(onPressed: (){

                 },
                 
                 style: ElevatedButton.styleFrom(fixedSize: const Size(300, 25), shadowColor: Colors.red),
                 child: const Text("BUY"))      
        ],
      )),
    );
  }
}
