import 'package:flutter/material.dart';
import 'package:flutter_project/CustomWidgets/CustomCard.dart';
import 'package:flutter_project/CustomWidgets/CustomContainer.dart';
import 'package:flutter_project/CustomWidgets/CustomTextFormField.dart';
import 'package:flutter_project/screens/ProductDetails.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('My CustomCard has a text and icon', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: CustomCard(text: 'T', icon: Icons.ac_unit),
    ));
    expect(find.text('T'), findsOneWidget);
    expect(find.byIcon(Icons.ac_unit), findsOneWidget);
  });

  testWidgets('CustomContainer displays image and navigates to ProductDetails',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CustomContainer(path: 'images/smartphone.png'),
    ));

    expect(find.byType(CustomContainer), findsOneWidget);
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    await tester.tap(find.byType(GestureDetector));
    await tester
        .pumpAndSettle(); // Wait for the navigation transition to complete.

    expect(find.byType(ProductDetails), findsOneWidget);
  });

  testWidgets('CustomTextFormField displays with icon and hint text',
      (tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CustomTextFormField(
          controller: controller,
          str: 'Username',
          isNotVisible: false,
          icon: Icons.person,
        ),
      ),
    ));

    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
    expect(find.text('Enter your Username'), findsOneWidget);

    // Verify the initial state of the TextFormField.
    expect(tester.widget<TextField>(find.byType(TextField)).obscureText,
        false);

    // Enter some text and trigger a validation.
    await tester.enterText(find.byType(TextField), 'JohnDoe');
    await tester.pump();

    // Verify that validation error is not present.
    expect(find.text('Please enter your Username'), findsNothing);
  });

  testWidgets('CustomTextFormField validates empty input', (tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CustomTextFormField(
          controller: controller,
          str: 'password',
          isNotVisible: true,
          icon: Icons.lock,
        ),
      ),
    ));

    // Tap on an empty TextFormField to trigger validation.
    await tester.tap(find.byType(TextField));
    await tester.pump();
  });



}
