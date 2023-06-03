import 'dart:math';

import 'package:appointment_app/widgets/menu_button.dart';
import 'package:flutter/material.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              maxRadius: 50,
              backgroundImage: AssetImage(
                  'assets/images/cute-profile-picture-jeik5d6qizh6dxxr.jpg'),
            ),
            title: Text(
              'Alaa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'alaa@gmail.com',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: Color.fromARGB(255, 245, 193, 193),
            thickness: 2,
            indent: 15.0,
          ),
          SizedBox(
            height: 20,
          ),
          MenuButton(
            iconData: Icons.home,
            nameIcon: 'Home Screen',
            onClick: () {},
          ),
          MenuButton(
            iconData: Icons.schedule,
            nameIcon: 'My appointment',
            onClick: () {},
          ),
          MenuButton(
            iconData: Icons.help_center,
            nameIcon: 'About US',
            onClick: () {},
          ),
          MenuButton(
            iconData: Icons.exit_to_app,
            nameIcon: 'Logout',
            onClick: () {},
          ),
          SizedBox(
            height: 280,
          ),
          Container(
            margin: EdgeInsets.all(6),
            child: Text("Developed by Cube company © 2023",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 249, 152, 185),
                )),
          ),
        ],
      ),
    );
  }
}
