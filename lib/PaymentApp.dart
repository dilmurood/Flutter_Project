import 'package:flutter/material.dart';
import 'package:flutter_project/MainPage.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  void _makeDelivery(BuildContext context) {
    Navigator.pushNamed(
        context, '/MainPage');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: const Text('Payment'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Promocode',
                  ),
                ),
              ),
              const Payment(),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _makeDelivery(context);
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black),
                child: const Text("Deliver")
              )
            ]
            
          ),
        ),
    );
  }
}

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _Payment();
}

class _Payment extends State<Payment> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          width: 20,
        ),
        const Text('Do you pay in cash'),
        const SizedBox(
          width: 20,
        ),
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },)
      ],
    );
  }
}
