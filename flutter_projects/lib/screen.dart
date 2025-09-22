import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String tittle;
  final TextEditingController controller = TextEditingController();

  Screen({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context, controller.text);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'This is $tittle.',
            style: const TextStyle(fontSize: 24),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Enter something',
            ),
          ),
        ],
      ),
    );
  }
}
