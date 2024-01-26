import 'package:flutter/material.dart';

class AddItemTab extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _infoController = TextEditingController();

  AddItemTab({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/MainPage',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        automaticallyImplyLeading: false,
        title: const Text(
          "Add Items",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Product type:",
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
                labelText: "product type",
              ),
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
              "Tell about your product.",
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
            Center(
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
