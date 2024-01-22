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
  final _phoneController = TextEditingController();
  bool isChecked = false;

  void _makeDelivery(BuildContext context) {
    Navigator.pushNamed(context, '/MainPage');
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Payment'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomTextFormField(
                controller: _addressController,
                str: "address",
                isNotVisible: false,
                icon: Icons.apartment,
              ),
              const SizedBox(height: 16.0),
              CustomTextFormField(
                controller: _promoController,
                str: "promo",
                isNotVisible: true,
                icon: Icons.key,
              ),
              const SizedBox(height: 16.0),
              CustomTextFormField(
                controller: _phoneController,
                str: "current phone number",
                isNotVisible: false,
                icon: Icons.phone,
              ),

              //         Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // children: <Widget>[
              //   const SizedBox(
              //     width: 20,
              //   ),
              //   const Text('Do you pay in cash'),
              //   const SizedBox(
              //     width: 20,
              //   ),
              //   Checkbox(
              //     value: isChecked,
              //     onChanged: (bool? value) {
              //       setState(() {
              //         isChecked = value ?? false;
              //       });
              //     },
              //   )
              // ],
              //         ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 400,
                child: FloatingActionButton(
                    onPressed: () {
                      _makeDelivery(context);
                    },
                    backgroundColor: Colors.black,
                    child: const Text(
                      "Deliver",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ]),
      ),
    );
  }
}
