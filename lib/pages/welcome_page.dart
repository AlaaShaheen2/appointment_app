import 'dart:math';

import 'package:appointment_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custome_icon.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 243),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 169, 102, 150),
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Image.asset(
                      'assets/images/welcome.png',
                      width: double.infinity,
                    ),
                    CustomButton(
                      onClick: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      txt: 'Login',
                      color: Color.fromARGB(255, 216, 189, 206),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    CustomButton(
                      onClick: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      txt: 'Signup',
                      color: Color(0xffa85080),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      width: 299,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 0.6,
                            color: Colors.purple[900],
                          )),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.6,
                            color: Colors.purple[900],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIcon(
                            pic: 'assets/icons/facebook.svg',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          CustomIcon(
                            pic: 'assets/icons/google-plus.svg',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          CustomIcon(
                            pic: 'assets/icons/twitter.svg',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          CustomIcon(
                            pic: 'assets/icons/text-messaging-icon.svg',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                'assets/images/signup_top.png',
                width: 100,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/21.png',
                width: 200,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
