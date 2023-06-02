import 'package:appointment_app/widgets/constant.dart';
import 'package:appointment_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../helper/bottom_navbar_home.dart';
import '../widgets/grid_view_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
