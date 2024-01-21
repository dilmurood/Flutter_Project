import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "PCs",
    "Laptops",
    "SmartPhones",
    "SmartWatches",
    "TVs",
    "Tablets",
    "Gadgets"
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  Widget buildCategory(int index) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.all(4.0),
          margin: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(16.0))),
          child: Text(
            categories[index],
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ));
  }
}
