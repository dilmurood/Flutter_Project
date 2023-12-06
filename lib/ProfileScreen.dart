import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        const CircleAvatar(
          radius: 120,
          //backgroundImage: AssetImage('images/ava.png'),
        ),
        const Text(
          "First name Last name",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const Text(
          "Developer",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 10, width: 200, child: Divider(color: Colors.black),),

        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          margin: const  EdgeInsets.all(20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.phone),
              SizedBox(width: 25,),
              Text('+998900000000',
              style: TextStyle(
                fontSize: 20,
              ),),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.email),
              SizedBox(width: 25,),
              Text('emailexample@gmail.com',
              style: TextStyle(
                fontSize: 20,
              ),),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.location_city),
              SizedBox(width: 25,),
              Text('Address',
              style: TextStyle(
                fontSize: 20,
              ),),
            ],
          ),
        )
        
      ])),
    );
  }
}
