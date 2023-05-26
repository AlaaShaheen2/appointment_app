import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background/6.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(),
        ),
      ),
    );
  }
}
