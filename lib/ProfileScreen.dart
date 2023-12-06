import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(children: <Widget>[
        Expanded(
            child: CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage('images/ava.png'),
        )),
        Text(
          "First name Last name",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Text(
          "Developer",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 10,
          width: 200,
          child: Divider(color: Colors.black),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(25),
          child: Padding(
            padding: EdgeInsets.all(16), // Adjust the padding as needed
            child: Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 25),
                Text(
                  '+998900000000',
                  style: TextStyle(
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
            padding: EdgeInsets.all(16), // Adjust the padding as needed
            child: Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'emailexample@gmail.com',
                  style: TextStyle(
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
            padding: EdgeInsets.all(16), // Adjust the padding as needed
            child: Row(
              children: <Widget>[
                Icon(Icons.location_city),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    );
  }
}
