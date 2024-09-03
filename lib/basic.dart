import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fajar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nim: 220605110152',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
            Text(
              'Nama: Fajar Triatmojo',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
            Text(
              'Alamat: Sepanjang, Gondang Legi, Malang, Jawa Timur',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
            Text(
              'No Wa: 083845614445',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ));
  }
}
