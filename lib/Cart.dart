import 'package:flutter/material.dart';
import 'package:flutter_project/PaymentApp.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final double totalCost = 0.0;
  final int numberOfProducts = 0;
  int num = 0;
  void _increment() {
    setState(() {
      num++;
    });
  }

  void _decrement() {
    setState(() {
      if (num > 0) {
      num--;
      }
    });
  }

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
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: const Color.fromRGBO(33, 150, 243, 1),
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: Colors.white,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: Colors.green,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
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
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
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
