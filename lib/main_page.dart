import 'package:flutter/material.dart';

class main_page extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('Stored Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Phone: $phone',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Address: $address',
              style: TextStyle(fontSize: 18.0),
            ),
            // Any additional widgets or logic using this data can be placed here
          ],
        ),
      ),
    );
  }
}
