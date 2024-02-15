import 'package:flutter/material.dart';

class AddIndicatorPopup extends StatelessWidget {
  const AddIndicatorPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Indicator'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildButton('Nurse Call', context),
          buildButton('Nurse Present', context),
          buildButton('Toilet', context),
          buildButton('Staff Assists', context),
          buildButton('Code Blue', context),
          buildButton('Code Red', context),
        ],
      ),
    );
  }

  Widget buildButton(String label, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Implement the functionality for each button
          Navigator.pop(context); // Close the popup
        },
        child: Text(label),
      ),
    );
  }
}
