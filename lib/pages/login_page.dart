import 'package:appointment_app/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../helper/show_snack_bar.dart';
import '../widgets/custom_button.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  GlobalKey<FormState> formkey = GlobalKey();
  String? email, password;

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
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color.fromARGB(255, 169, 102, 150),
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Image.asset(
                        'assets/images/9.png',
                        width: double.infinity,
                      ),
                      CustomTextField(
                        obscureTxt: false,
                        onChange: (data) {
                          email = data;
                        },
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
                        onChange: (data) {
                          password = data;
                        },
                        hintText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      CustomButton(
                        onClick: () async {
                          if (formkey.currentState!.validate()) {
                            isLoading = true;
                            setState(() {});
                            try {
                              await loginUser();
                              Navigator.pushNamed(context, HomePage.id);
                            } on FirebaseAuthException catch (ex) {
                              if (ex.code == 'user-not-found') {
                                showSnackBar(context, 'user not found');
                              } else if (ex.code == 'wrong-password') {
                                showSnackBar(context, 'wrong password');
                              }
                            } catch (ex) {
                              print(ex);
                              showSnackBar(context, 'there was an error');
                            }

                            isLoading = false;
                            setState(() {});
                          }
                        },
                        txt: 'Login',
                        color: Color.fromARGB(255, 209, 115, 179),
                      ),
                    ],
                  ),
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
                'assets/images/10.png',
                width: 200,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
