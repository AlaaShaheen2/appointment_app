import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Container(
        decoration: BoxDecoration(image:
         DecorationImage(
          image:AssetImage(''),),),
      ),
    );
  }
}