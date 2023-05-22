import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String txt;
  final VoidCallback onClick;
  const CustomButton(
      {super.key,
      required this.txt,
      required this.onClick,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 90, vertical: 13)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
      ),
    );
  }
}
