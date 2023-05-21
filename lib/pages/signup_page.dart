import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                      'Signup',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 169, 102, 150),
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Image.asset(
                      'assets/images/14.png',
                      width: double.infinity,
                    ),
                    CustomTextField(
                      obscureTxt: false,
                      onChange: (p0) {},
                      hintText: 'Email',
                      icon: Icon(
                        Icons.person,
                        color: Colors.purple[800],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    CustomTextField(
                      obscureTxt: true,
                      onChange: (p0) {},
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.purple[800],
                        size: 19,
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
                'assets/images/15.png',
                width: 300,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
