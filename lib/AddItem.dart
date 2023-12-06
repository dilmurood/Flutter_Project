import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text("Add Items",
        textAlign: TextAlign.center,),
        backgroundColor: Colors.black38,
        titleTextStyle: const TextStyle(color: Colors.amber),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const Text(
              "Product name:",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "product name"
                ),               
              ),

              const SizedBox(height: 10,),

              const Text(
              "Product ID:",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "product id"
                ),
              ),
              const SizedBox(height: 10,),

               const Text(
              "Product Price:",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: _priceController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "product price"
                ),
              ),
            const SizedBox(height: 20),
            SafeArea(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(100, 50)),
                child: const Text('Add'),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/AddItemShow',
                    arguments: {
                      'name': _nameController.text,
                      'id': _idController.text,
                      'price': _priceController.text,
                    },
                  );

                },
              ),
            ),
              
           ],
        ),
      ),
      
    );

  }
}
