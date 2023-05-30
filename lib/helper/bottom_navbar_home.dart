import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onChange});
  Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: GNav(
          gap: 3,
          onTabChange: onChange,
          tabBackgroundColor: Color.fromARGB(255, 250, 204, 218),
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.schedule,
              text: 'Appointment',
            ),
            GButton(icon: Icons.favorite_border, text: 'Liks'),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
          ]),
    );
  }
}
