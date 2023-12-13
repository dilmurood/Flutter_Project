import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_project/Cart.dart';
import 'package:flutter_project/ProductDetails.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void _buyPressed(BuildContext context) {
    Navigator.pushNamed(context, '/Cart');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
          title: const Text(
            "Main Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.home),
      ),
      backgroundColor: Colors.tealAccent,
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Recommendations',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Search and Filters',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                //crossAxisSpacing: 25,
                mainAxisSpacing: 10,
                mainAxisExtent: 250,
              ),
              itemCount: 16,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    hoverColor: const Color.fromARGB(255, 207, 205, 205),
                    title: Text('Product $index'),
                    subtitle: const Text('Price: \$20'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _buyPressed(context);
        },
        backgroundColor: Colors.teal,
        hoverColor: Colors.tealAccent,
        child: const Icon(
          Icons.shopping_cart,
          size: 30,
        ),
      ),
      bottomSheet:  const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home_sharp, size: 30,), text: 'Main'),
            Tab(icon: Icon(Icons.filter_alt, size: 30,), text: 'Filter',),
            Tab(icon: Icon(Icons.person, size: 30,), text: 'Profile',),
            Tab(icon: Icon(Icons.shopping_cart, size: 30,), text: 'Cart',),
          ],          ),
    ),)
    );
  }
}
