import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final String item;
  final int index;

  const ItemDetailsPage({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
      ),
      body: Center(
        child: Hero(
          tag: 'item_$index',
          child: Card(
            elevation: 4.0,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  item,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
