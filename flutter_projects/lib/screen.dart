import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String tittle;

  const Screen({super.key,required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: Center(
        child: Text(
          'This is $tittle.',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}