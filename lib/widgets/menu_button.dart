import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuButton extends StatelessWidget {
  MenuButton({
    super.key,
    required this.nameIcon,
    required this.iconData,
    required this.onClick,
  });
  String? nameIcon;
  IconData? iconData;
  VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(
        //   iconData,
        //   size: 28,
        //   color: Color.fromARGB(255, 237, 153, 195),
        // ),
        IconButton(
          onPressed: onClick,
          icon: Icon(
            iconData,
            size: 28,
          ),
          color: Color.fromARGB(255, 245, 193, 193),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          nameIcon!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 255, 233, 233),
          ),
        ),
      ],
    );
  }
}
