// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter_project/RegisterationScreen.dart';

// class Cart extends StatelessWidget {
//   final double totalCost = 0.0;
//   final int numberOfProducts = 0;

//   const Cart({super.key});


//   void _buyPressed(BuildContext context) {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => RegistrationScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Main Page",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//         backgroundColor: Colors.teal,
//         leading: const Icon(Icons.shopping_cart),
//       ),
//       backgroundColor: Colors.tealAccent,
//       body: Center(
//           child: Column(
//         children: <Widget>[
//           const SizedBox(
//             height: 25,
//           ),
//           Container(
//             height: 100,
//             width: 400,
//             color: const Color.fromRGBO(33, 150, 243, 1),
//             child: Row(children: <Widget>[
//               const Icon(
//                 Icons.no_sim,
//                 size: 100,
//               ),
//               const Text("Some text about product."),
//               const SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text("+")),
//               ElevatedButton(onPressed: () {}, child: const Text("-")),
//             ]),
//           ),
//           Container(
//             height: 100,
//             width: 400,
//             color: Colors.white,
//             child: Row(children: <Widget>[
//               const Icon(
//                 Icons.no_sim,
//                 size: 100,
//               ),
//               const Text("Some text about product."),
//               const SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text("+")),
//               ElevatedButton(onPressed: () {}, child: const Text("-")),
//             ]),
//           ),
//           Container(
//             height: 100,
//             width: 400,
//             color: Colors.green,
//             child: Row(children: <Widget>[
//               const Icon(
//                 Icons.no_sim,
//                 size: 100,
//               ),
//               const Text("Some text about product."),
//               const SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text("+")),
//               ElevatedButton(onPressed: () {}, child: const Text("-")),
//             ]),
//           ),
//           Container(
//             height: 100,
//             width: 400,
//             color: Colors.cyanAccent,
//             child: Row(children: <Widget>[
//               const Icon(
//                 Icons.no_sim,
//                 size: 100,
//               ),
//               const Text("Some text about product."),
//               const SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text("+")),
//               ElevatedButton(onPressed: () {}, child: const Text("-")),
//             ]),
//           ),
//           const SizedBox(
//             height: 25,
//           ),
//           Container(
//             color: Colors.white,
//             margin: const EdgeInsets.all(20),
//             padding: const EdgeInsets.all(20),
//             child: Row(children: <Widget>[
//                Text("Total number of products: $numberOfProducts \nTotal cost: $totalCost")
//             ]),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 _buyPressed(context);
//               },
//               style: ElevatedButton.styleFrom(
//                   fixedSize: const Size(300, 25), shadowColor: Colors.red),
//               child: const Text("BUY"))
//         ],
//       )),
//     );
//   }
// }
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

