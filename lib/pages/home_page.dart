import 'package:appointment_app/pages/side_menu_list.dart';
import 'package:appointment_app/widgets/constant.dart';
import 'package:appointment_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../helper/bottom_navbar_home.dart';
import '../widgets/grid_view_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<SideMenuState> sideMwnuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      background: Color.fromARGB(255, 71, 45, 71),
      key: sideMwnuKey,
      menu: SideMenuList(),
      child: Scaffold(
        backgroundColor: backGround,
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 22.5,
                      child: Container(
                        child: Text('8'),
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 119, 53, 130),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.schedule),
                    ),
                  ],
                ),
              ],
            ),
          ],
          backgroundColor: appBarColor,
          title: Text('Home Page'),
          leading: IconButton(
            splashColor: Colors.white,
            icon: Icon(Icons.menu),
            onPressed: () {
              if (sideMwnuKey.currentState!.isOpened) {
                sideMwnuKey.currentState!.closeSideMenu();
              } else {
                sideMwnuKey.currentState!.openSideMenu();
              }
            },
            iconSize: 30,
          ),
        ),
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
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
