import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText, this.onChange, this.icon, required bool obscureTxt});
  Function(String)? onChange;
  String? hintText;
  Icon? icon;
  bool obscureTxt = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 219, 191, 224),
        borderRadius: BorderRadius.circular(66),
      ),
      width: 266,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        obscureText: obscureTxt,
        onChanged: onChange,
        decoration: InputDecoration(
            icon: icon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
