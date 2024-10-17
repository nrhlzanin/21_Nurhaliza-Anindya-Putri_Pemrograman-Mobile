import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blueGrey[50],
      child: const Center(
        child: Text(
          'Nurhaliza Anindya Putri - NIM: 123456789',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
