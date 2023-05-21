import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 100,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 100,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
