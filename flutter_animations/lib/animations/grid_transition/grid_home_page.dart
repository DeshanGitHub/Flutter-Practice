import 'package:flutter/material.dart';
import 'package:flutter_animations/animations/grid_transition/item_details_page.dart';

class GridHomePage extends StatelessWidget {
  GridHomePage({super.key});

  final List<String> itemList =
      List<String>.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Home Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ItemDetailsPage(
                      item: itemList[index],
                      index: index,
                    );
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(seconds: 1),
                ),
              );
            },
            child: Hero(
              tag: 'item_$index',
              flightShuttleBuilder: _flightShuttleBuilder,
              child: Card(
                child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        itemList[index],
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
        },
      ),
    );
  }

  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double rotationValue = flightDirection == HeroFlightDirection.push
            ? animation.value * 3.14
            : (1 - animation.value) * 3.14;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..rotateY(rotationValue),
          child: toHeroContext.widget,
        );
      },
    );
  }
}
