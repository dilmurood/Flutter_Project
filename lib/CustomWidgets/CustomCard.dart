import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.icon
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white24,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(icon),
            const SizedBox(
              width: 25,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
