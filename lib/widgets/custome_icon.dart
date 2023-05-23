import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.pic, required this.onTap});
  final String? pic;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromARGB(255, 188, 118, 150), width: 1)),
        child: SvgPicture.asset(
          pic!,
          color: Color.fromARGB(255, 214, 115, 158),
          height: 27,
        ),
      ),
    );
  }
}
