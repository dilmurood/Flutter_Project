import 'package:flutter/material.dart';

class AddItemShow extends StatelessWidget{
  const AddItemShow({super.key});

  @override
  Widget build(BuildContext context) {
    // Receiving arguments passed from the previous screen
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Retrieving data from arguments
    final String name = args['name'];
    final String id = args['id'];
    final String price = args['price'];

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Added Product Info'),
        backgroundColor: Colors.black38,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: $name',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'ID: $id',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Price: $price',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Info: $price',
              style: const TextStyle(fontSize: 18.0),
            ),
            
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Successfully Added!!!")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}