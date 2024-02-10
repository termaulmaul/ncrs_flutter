import 'package:flutter/material.dart';

class NurseCallDataTable extends StatelessWidget {
  const NurseCallDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DataTable(
        dataRowHeight: 60.0, // Adjust the height of each row as needed
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        columns: const [
          DataColumn(
            label: Text('No'),
            numeric: true,
          ),
          DataColumn(
            label: Text('Room'),
          ),
          DataColumn(
            label: Text('Bed'),
          ),
          DataColumn(
            label: Text('Call Time'),
          ),
          DataColumn(
            label: Text('Response Time'),
          ),
          DataColumn(
            label: Text('Time'),
          ),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(
              Text('1'),
              showEditIcon: false,
            ),
            DataCell(
              Text('Kamar J2'),
            ),
            DataCell(
              Text('Bed 1'),
            ),
            DataCell(
              Text('25/10/2021 10:00:00'),
            ),
            DataCell(
              Text('25/10/2021 10:05:00'),
            ),
            DataCell(
              Text('0:05:00'),
            ),
          ]),
          
          // Add more DataRow as needed
        ],
      ),
    );
  }
}
