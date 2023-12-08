import 'package:flutter/material.dart';
import 'package:flutter_project/Cart.dart';

void _buyPressed(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Cart()));
  }

class MainPage extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recommendations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Search and Filters',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Add search and filter widgets here

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Add category buttons or a drawer for navigation

          // Example product grid for electronics
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 4, // Replace with the actual number of products
              itemBuilder: (context, index) {
                // Replace the following with your product widget
                return Card(
                  child: ListTile(
                    title: Text('Product $index'),
                    subtitle: Text('Price: \$20'),
                    onTap: () {
                      // Handle product tap
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
          _buyPressed(context) ;
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

