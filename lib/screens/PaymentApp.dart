import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';

class PaymentApp extends StatefulWidget {
  const PaymentApp({super.key});

  @override
  State<PaymentApp> createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
  final _addressController = TextEditingController();
  final _promoController = TextEditingController();
  bool isChecked = false;

  void _makeDelivery(BuildContext context) {
    Navigator.pushNamed(context, '/MainPage');
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: const Text('Payment'),
      ),
      backgroundColor: Colors.white,
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextFormField(
            controller: _addressController,
            str: "address",
            isNotVisible: false,
            icon: Icons.apartment,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextFormField(
            controller: _promoController,
            str: "promo",
            isNotVisible: true,
            icon: Icons.key,
          ),
        ),
        Row(
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
              },
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        FloatingActionButton(
            onPressed: () {
              _makeDelivery(context);
            },
            isExtended: true,
            backgroundColor: Colors.black,
            child: const Text(
              "Deliver",
              style: TextStyle(color: Colors.white),
            )),
      ]),
    );
  }
}
