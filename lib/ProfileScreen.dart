import 'package:flutter/material.dart';
import 'package:flutter_project/LoginScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(
        context, '/LoginScreen');
  }

  @override
  Widget build(BuildContext context) {
    // Receiving arguments passed from the previous screen
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // Retrieving data from arguments
    final String name = args['name'];
    final String email = args['email'];
    final String phone = args['phone'];
    final String address = args['address'];

    return MaterialApp(
      home: Center(
          child: Column(children: <Widget>[
            const Expanded(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/ava.png'),
              )
            ),
        Text(
          name,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        const Text(
          "user",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
          width: 200,
          child: Divider(color: Colors.black),
        ),
        Card(
          color: Colors.white24,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                const Icon(Icons.phone),
                const SizedBox(width: 25),
                Text(
                  phone,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white24,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                const Icon(Icons.email),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  email,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white24,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                const Icon(Icons.location_city),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  address,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          IconButton(
            onPressed: () {
              _changeScreen(context);
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(150, 50)),
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
