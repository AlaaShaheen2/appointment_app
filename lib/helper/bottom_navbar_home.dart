import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: GNav(
          gap: 3,
       
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
