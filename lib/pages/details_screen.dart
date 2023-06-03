import 'package:appointment_app/pages/side_menu_list.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../helper/global.dart';
import '../widgets/constant.dart';

class DetialsScreen extends StatefulWidget {
  const DetialsScreen({super.key});

  @override
  State<DetialsScreen> createState() => _DetialsScreenState();
}

class _DetialsScreenState extends State<DetialsScreen> {
  bool isShowMore = true;
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      background: Color.fromARGB(255, 71, 45, 71),
      key: sideMwnuKey,
      menu: SideMenuList(),
      child: Scaffold(
        backgroundColor: backGround,
        appBar: AppBar(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/services/1.png"),
              SizedBox(
                height: 11,
              ),
              Text(
                "Hair Cut",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.",
                style: TextStyle(
                  fontSize: 18,
                ),
                maxLines: isShowMore ? 3 : null,
                overflow: TextOverflow.fade,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "Show more" : "Show less",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 223, 125, 158),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
