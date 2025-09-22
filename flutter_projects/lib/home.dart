import 'package:flutter/material.dart';
import 'package:flutter_animations/screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page One'),
                  ));
            },
            child: const Text('Go to Page One'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page Two'),
                  ));
            },
            child: const Text('Go to Page Two'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page Three'),
                  ));
            },
            child: const Text('Go to Page Three'),
          ),
        ],
      )),
    );
  }
}
