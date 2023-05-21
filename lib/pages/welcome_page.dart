import 'package:appointment_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

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
                    SizedBox(
                      height: 35,
                    ),
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
                      height: 22,
                    ),
                    CustomButton(
                      onClick: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      txt: 'Signup',
                      color: Color(0xffa85080),
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
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 100,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
