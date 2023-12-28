import 'package:flutter/material.dart';
import 'package:flutter_project/pages/ProductDetails.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _buyPressed(BuildContext context) {
    Navigator.pushNamed(context, '/Cart');
  }

  bool? isSlelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Main Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.black38,
          leading: const Icon(Icons.home),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              child: SearchBar(
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                leading: const Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 16,
                itemBuilder: (context, index) {
                  index = index + 1;
                  return Card(
                    color: Colors.white12,
                    child: ListTile(
                      splashColor: Colors.white38,
                      hoverColor: const Color.fromARGB(255, 205, 205, 205),
                      title: Text('Product $index'),
                      subtitle: const Text('Price: \$20'),
                      trailing: Checkbox(
                          value: isSlelected,
                          onChanged: (value) {
                            setState(() {
                              isSlelected = value;
                            });
                          }),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetails()));
                      },
                      minVerticalPadding: 20,
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
          backgroundColor: Colors.black,
          hoverColor: Colors.black38,
          child: const Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
        ),
        bottomSheet: const TabBar(
          tabs: [
            Tab(
                icon: Icon(
                  Icons.home_sharp,
                  size: 30,
                ),
                text: 'Main'),
            Tab(
              icon: Icon(
                Icons.filter_alt,
                size: 30,
              ),
              text: 'Filter',
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              text: 'Profile',
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              text: 'Cart',
            ),
          ],
        ),
      ),
    ));
  }
}
