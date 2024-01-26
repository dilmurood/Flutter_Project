import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomCard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(context, '/LoginScreen');
  }

  @override
  Widget build(BuildContext context) {
    // // Receiving arguments passed from the previous screen
    // final Map<String, dynamic> args =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // // Retrieving data from arguments
    // final String name = args['name'];
    // final String email = args['email'];
    // final String phone = args['phone'];
    // final String password = args['password'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        leading: BackButton(
          onPressed: () => Navigator.pushNamed(context, '/MainPage'),
        ),
        actions: [
          TextButton(
              //fix edit button
              onPressed: () => {},
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        ],
        title: const Text('Profile'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        const CircleAvatar(
          backgroundImage: AssetImage('images/ava.png'),
        ),
        const Text(
          "Full Name",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        const Text(
          "user status",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
          width: 200,
          child: Divider(color: Colors.black),
        ),
        const CustomCard(text: "phone",icon: Icons.phone),
        const CustomCard(text: "email", icon: Icons.email),
        const CustomCard(text: "password", icon: Icons.password),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          IconButton(
            onPressed: () {
              _changeScreen(context);
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.red, fixedSize: const Size(150, 50)),
            icon: const Icon(Icons.logout),
          ),
        ]),
        const SizedBox(
          height: 20,
        )
      ])),
    );
  }
}
