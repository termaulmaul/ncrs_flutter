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
          Container(
            color: Colors.teal, // Sesuaikan dengan warna yang diinginkan
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Add Indicator button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.teal,
                  ),
                  child: const Text('Add Indicator'),
                ),
                const SizedBox(width: 8.0), // Adjust the width as needed
                ElevatedButton(
                  onPressed: () {
                    // Handle Delete Indicator button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.teal,
                  ),
                  child: const Text('Delete Indicator'),
                ),
                const SizedBox(width: 8.0), // Adjust the width as needed
                ElevatedButton(
                  onPressed: () {
                    // Handle Save Indicator button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.teal,
                  ),
                  child: const Text('Save Indicator'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
