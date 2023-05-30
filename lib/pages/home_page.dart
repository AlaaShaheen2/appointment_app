import 'package:appointment_app/widgets/constant.dart';
import 'package:appointment_app/widgets/custom_button.dart';
import 'package:appointment_app/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import '../helper/bottom_navbar_home.dart';
import '../widgets/grid_view_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Flexible(
              child: ServicesGridView(),
            ),
            CustomButton(
              txt: 'Take appoinment',
              onClick: () {},
              color: Color.fromARGB(255, 203, 145, 173),
            )
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Column(
      //         children: [
      //           UserAccountsDrawerHeader(
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/background/30.png"),
      //                   fit: BoxFit.cover),
      //             ),
      //             accountName: Text(
      //               'Alaa',
      //               style: TextStyle(
      //                 color: Color.fromARGB(255, 136, 54, 92),
      //               ),
      //             ),
      //             accountEmail: Text(''),
      //             currentAccountPictureSize: Size.square(99),
      //             currentAccountPicture: CircleAvatar(
      //                 radius: 55,
      //                 backgroundImage:
      //                     AssetImage("assets/images/background/16.png")),
      //           ),
      //           ListTile(
      //               title: Text("Home"),
      //               leading: Icon(Icons.home),
      //               onTap: () {}),
      //           ListTile(
      //               title: Text("My appointment"),
      //               leading: Icon(Icons.schedule),
      //               onTap: () {}),
      //           ListTile(
      //               title: Text("About"),
      //               leading: Icon(Icons.help_center),
      //               onTap: () {}),
      //           ListTile(
      //               title: Text("Logout"),
      //               leading: Icon(Icons.exit_to_app),
      //               onTap: () {}),
      //         ],
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(bottom: 12),
      //         child: Text("Developed by Cube Company © 2023",
      //             style: TextStyle(fontSize: 16)),
      //       ),
      //     ],
      //   ),
      // ),

      appBar: AppBar(
        title: Text('Home Page'),
        leading: MenuWidget(),
        backgroundColor: appBarColor,
      ),
      bottomNavigationBar: BottomNavBar(
        onChange: (int) {},
      ),
    );
  }
}
