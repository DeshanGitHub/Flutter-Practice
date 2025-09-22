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
            onPressed: () async {
              String? screenValue = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page One'),
                  ));
              _checkScreenValue(screenValue: screenValue);
            },
            child: const Text('Go to Page One'),
          ),
          ElevatedButton(
            onPressed: () async {
              String? screenValue = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page Two'),
                  ));
              _checkScreenValue(screenValue: screenValue);
            },
            child: const Text('Go to Page Two'),
          ),
          ElevatedButton(
            onPressed: () async {
              String? screenValue = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(tittle: 'Page Three'),
                  ));
              _checkScreenValue(screenValue: screenValue);
            },
            child: const Text('Go to Page Three'),
          ),
        ],
      )),
    );
  }

  void _checkScreenValue({String? screenValue}) {
    if (screenValue != null) {
      screenValue.isEmpty
          ? print('Value is empty')
          : print('Value from Screen: $screenValue');
    } else if (screenValue == null) {
      print('No value returned from Screen');
    }
  }
}
