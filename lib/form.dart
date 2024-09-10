import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<String> listFakultas = [
  'Saintek',
  'Ekonomi',
  'Syariah',
  'Psikologi',
];

List<String> listJurusan = [
  'Teknik Informatika',
  'Teknik Arsitek',
  'Matematika',
  'Fisika',
  'Biologi',
];

class DisplayForm extends StatefulWidget {
  const DisplayForm({super.key});

  @override
  State<DisplayForm> createState() => _DisplayFormState();
}

class _DisplayFormState extends State<DisplayForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracer Alumni'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      body: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Data Diri',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Gap(12),
              CTextFromField(label: 'Nama'),
              Gap(10),
              CTextFromField(label: 'Nim'),
              Gap(10),
              CTextFromField(label: 'Tahun Lulus'),
              Gap(10),
              CTextFromField(label: 'No Wa'),
              Gap(10),
              CTextFromField(label: 'Email'),
              Gap(10),
              CTextFromField(label: 'Alamat'),
              Gap(10),
              CDropdownFormField(label: 'Fakultas', opsions: listFakultas),
              Gap(10),
              CDropdownFormField(label: 'Jurusan', opsions: listJurusan),
            ],
          ),
        ),
      ),
    );
  }
}

class CDropdownFormField extends StatelessWidget {
  final String label;
  final List<String> opsions;
  const CDropdownFormField({
    super.key,
    required this.label,
    required this.opsions,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        items: List.generate(opsions.length, (index) {
          return DropdownMenuItem(
            value: index,
            child: Text(opsions[index]),
          );
        }),
        onChanged: (value) {});
  }
}

class CTextFromField extends StatelessWidget {
  final String label;
  const CTextFromField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always),
    );
  }
}
