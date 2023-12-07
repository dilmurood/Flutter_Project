import 'package:flutter/material.dart';
import 'package:flutter_project/LoginScreen.dart';

class ProfileScreen extends StatelessWidget {
  
  const ProfileScreen({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.push(
        context, //
        MaterialPageRoute(builder: (context) => LoginScreen()));
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

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(children: <Widget>[
        const Expanded(
            child: CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage('images/ava.png'),
        )),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 25),
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
          color: Colors.white,
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
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
          color: Colors.white,
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
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          IconButton(
            onPressed: () {
              _changeScreen(context);
            },
            style: IconButton.styleFrom(
                backgroundColor: Colors.redAccent,
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
