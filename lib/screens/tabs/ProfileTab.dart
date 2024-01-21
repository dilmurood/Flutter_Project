import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomCard.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  void _changeScreen(BuildContext context) {
    Navigator.pushNamed(context, '/LoginScreen');
  }

  @override
  Widget build(BuildContext context) {
    // CollectionReference users = FirebaseFirestore.instance.collection('users');
    // users.doc().get().then((DocumentSnapshot snapshot) {
    //   if (snapshot.exists) {
    //     Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    //     print(
    //         "Full Name: ${data['username']}, Email: ${data['email']}, Phone: ${data['phone']}");
    //   } else {
    //     print("Document does not exist");
    //   }

    //   return print("loading");
    // });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              //fix edit button
              onPressed: () => {},
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        ],
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: <Widget>[
        const SizedBox(height: 10),
        const CircleAvatar(
          radius: 100,
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
        const CustomCard(text: "phone", icon: Icons.phone),
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
      ]),
    );
  }
}
