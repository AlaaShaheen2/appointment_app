import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.onChange, this.icon, this.obscureTxt});
  Function(String)? onChange;
  String? hintText;
  Icon? icon;
  bool? obscureTxt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 219, 191, 224),
        borderRadius: BorderRadius.circular(66),
      ),
      width: 266,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
        },
        obscureText: obscureTxt!,
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
