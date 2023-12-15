import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {

    _storedWelcome() async {
    int isViewed = 0;
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('Welcome', isViewed);
  }
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      leading: const Icon(Icons.home),
        title: const Text('welcome', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
            TextButton(
              onPressed: () {
                _storedWelcome();
                Navigator.pushNamed(context, '/MainPage');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
              Text(
                'Welcome to the app',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
        )
      )
    );
  }
}
