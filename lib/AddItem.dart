import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _infoController = TextEditingController();

  AddItem({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/AddItemShow',
      arguments: {
        'name': _nameController.text,
        'id': _idController.text,
        'price': _priceController.text,
        'info': _infoController.text
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Items",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
        titleTextStyle: const TextStyle(color: Colors.amber),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.tealAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Product name:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "product name",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Product ID:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _idController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "product id"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Product Price:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _priceController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "product price(\$)"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Product info:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              mouseCursor: MaterialStateMouseCursor.clickable,
              controller: _infoController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "product ifno"),
            ),
            const SizedBox(height: 20),
            SafeArea(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(100, 50)),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _changeScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
