import 'package:flutter/material.dart';

class FilterTab extends StatelessWidget {
  FilterTab({Key? key}) : super(key: key);
  RangeValues values = const RangeValues(0, 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.filter_alt),
        title: const Text('Filters', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Brand',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Price Range',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RangeSlider(
              values: values,
              onChanged: (RangeValues values) {},
              min: 0,
              max: 500,
              divisions: 50,
              labels: RangeLabels(
                  '${values.start.round()}', '${values.end.round()}'),
            ),
          ],
        ),
      ),
    );
  }
}
