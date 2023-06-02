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
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background/7.png'),
                    fit: BoxFit.fill),
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                reverse: true,
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
                        textInputType: TextInputType.emailAddress,
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
                       textInputType: TextInputType.text,
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
          ]),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
