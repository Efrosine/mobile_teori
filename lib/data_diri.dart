import 'package:flutter/material.dart';

class DataDiri extends StatelessWidget {
  const DataDiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyLarge!,
          child: Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(100),
            },
            children: const [
              TableRow(
                children: [
                  Text('Nim'),
                  Text('220605110152'),
                ],
              ),
              TableRow(children: [
                Text('Nama'),
                Text('Fajar Triatmojo'),
              ]),
              TableRow(children: [
                Text('Alamat'),
                Text('Sepanjang, Gondang Legi, Malang, Jawa Timur'),
              ]),
              TableRow(children: [
                Text('No Wa'),
                Text('083845614445'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
