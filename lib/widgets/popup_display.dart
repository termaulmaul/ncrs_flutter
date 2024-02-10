import 'package:flutter/material.dart';

class PopupDisplay extends StatelessWidget {
  const PopupDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Display'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'lib/assets/denah.png', // Ganti dengan path yang sesuai
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }
}
