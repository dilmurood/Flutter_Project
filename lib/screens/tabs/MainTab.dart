import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomContainer.dart';
import 'package:flutter_project/screens/tabs/main/Categories.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        automaticallyImplyLeading: false,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 80,
            width: 300,
            child: const SearchBar(
              leading: Icon(Icons.search),
              hintText: "Search items",
            ),
          )
        ],
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Categories(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Best sellers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomContainer(path: 'images/smartphone.png',),
                        CustomContainer(path: 'images/smartphone.png',),
                        CustomContainer(path: 'images/smartphone.png',),
                        CustomContainer(path: 'images/smartphone.png',),
                        CustomContainer(path: 'images/smartphone.png',),
                        CustomContainer(path: 'images/smartphone.png',),                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("New Products",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomContainer(path: 'images/laptop.png',),
                        CustomContainer(path: 'images/laptop.png',),
                        CustomContainer(path: 'images/laptop.png',),
                        CustomContainer(path: 'images/laptop.png',),
                        CustomContainer(path: 'images/laptop.png',),
                        CustomContainer(path: 'images/laptop.png',),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Discount",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomContainer(path: 'images/apple.png',),
                        CustomContainer(path: 'images/apple.png',),
                        CustomContainer(path: 'images/apple.png',),
                        CustomContainer(path: 'images/apple.png',),
                        CustomContainer(path: 'images/apple.png',),

                      ],
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}