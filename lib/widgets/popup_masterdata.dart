import 'package:flutter/material.dart';

class PopupMasterData extends StatelessWidget {
  const PopupMasterData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Master Data Settings'),
      contentPadding: const EdgeInsets.all(10.0),
      content: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          dataRowHeight: 60.0, // Adjust the height of each row as needed
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          columns: const [
            DataColumn(
              label: Text('ID'),
              numeric: true,
            ),
            DataColumn(
              label: Text('Char Code'),
            ),
            DataColumn(
              label: Text('Sub Code'),
            ),
            DataColumn(
              label: Text('Room Name'),
            ),
            DataColumn(
              label: Text('Bed Name'),
            ),
            DataColumn(
              label: Text('Shape'),
            ),
            DataColumn(
              label: Text('V 1'),
            ),
            DataColumn(
              label: Text('V 2'),
            ),
            DataColumn(
              label: Text('V 3'),
            ),
            DataColumn(
              label: Text('V 4'),
            ),
            DataColumn(
              label: Text('V 5'),
            ),
            DataColumn(
              label: Text('V 6'),
            ),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('1016')),
              DataCell(Text('9016')),
              DataCell(Text('Kamar D2')),
              DataCell(Text('Bed 1')),
              DataCell(Text('B1')),
              DataCell(Text('NC')),
              DataCell(Text('kamar')),
              DataCell(Text('D')),
              DataCell(Text('2')),
              DataCell(Text('bed')),
              DataCell(Text('1')),
            ]),
            // Add more DataRow as needed
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            // Implement new entry functionality
          },
          child: const Text('New'),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement delete functionality
          },
          child: const Text('Delete'),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement save functionality
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
