import 'package:flutter/material.dart';
import 'package:flutter_project/MainPage.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  void _makeDelivery(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Payment'),
        ),
        body:  Center(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'where to deliver',
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
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    _makeDelivery(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                      fixedSize: Size(
                        size.width * 0.7,
                        size.height * 0.05,
                      ),
                      shadowColor: Colors.red),
                  child: const Text("Deliver"))
            ],
          ),
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
            tristate: true,
            value: true,
            isError: true,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            })
      ],
    );
  }
}
