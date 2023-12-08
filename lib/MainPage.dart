import 'package:flutter/material.dart';
import 'package:flutter_project/Cart.dart';
import 'package:flutter_project/ProductDetails.dart';

void _buyPressed(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: Colors.black12,
                  child: ListTile(
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
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
