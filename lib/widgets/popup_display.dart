import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              'lib/assets/denah.png', // Ganti dengan path yang sesuai
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
