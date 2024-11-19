import 'package:flutter/material.dart';

class HomePageAnimationDemo extends StatefulWidget {
  const HomePageAnimationDemo({super.key});

  @override
  State<HomePageAnimationDemo> createState() => _HomePageAnimationDemoState();
}

class _HomePageAnimationDemoState extends State<HomePageAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> logoFadeAnimation;
  late Animation<double> textScaleAnimation;
  late Animation<Offset> textPositionAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    logoFadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    textScaleAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    textPositionAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(controller);
    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: logoFadeAnimation,
            child: const FlutterLogo(
              size: 100.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SlideTransition(
              position: textPositionAnimation,
              child: ScaleTransition(
                scale: textScaleAnimation,
                child: const Text(
                  'Welcome to Flutter Devs and Flutter Animations as very important part of Flutter Development and Flutter Devs is the best place to learn Flutter Development',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
