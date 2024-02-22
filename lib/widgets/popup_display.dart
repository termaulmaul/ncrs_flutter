import 'package:flutter/material.dart';
import 'popup_addindicator.dart'; // Import file popup_addindicator.dart

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
                    _showAddIndicatorPopup(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.teal, backgroundColor: Colors.white,
                  ),
                  child: const Text('Add Indicator'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showAddIndicatorPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AddIndicatorPopup();
      },
    );
  }
}
