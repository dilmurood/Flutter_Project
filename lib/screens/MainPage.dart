import 'package:flutter/material.dart';
import 'package:flutter_project/screens/tabs/AddItemTab.dart';
import 'package:flutter_project/screens/tabs/CartTab.dart';
import 'package:flutter_project/screens/tabs/FilterTab.dart';
import 'package:flutter_project/screens/tabs/MainTab.dart';
import 'package:flutter_project/screens/tabs/ProfileTab.dart';

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
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: TabBarView(children: [
                  const MainTab(),
                  FilterTab(),
                  AddItemTab(),
                  const CartTab(),
                  const ProfileTab(),
                ]),
              ),
              const BottomAppBar(
                color: Colors.greenAccent,
                child: TabBar(
                  tabs: [
                    Tab(
                        icon: Icon(
                          Icons.home_sharp,
                        ),
                        text: 'Main'),
                    Tab(
                      icon: Icon(
                        Icons.filter_alt,
                      ),
                      text: 'Filter',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.add,
                      ),
                      text: 'Add Item',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      text: 'Cart',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person,
                      ),
                      text: 'Profile',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
