import 'package:appointment_app/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../helper/show_snack_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

// ignore: must_be_immutable
class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 247, 246, 243),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background/19.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(children: [
                SizedBox(
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
                                  await registerUser();
                                  Navigator.pushNamed(context, HomePage.id);
                                } on FirebaseAuthException catch (ex) {
                                  if (ex.code == 'weak-password') {
                                    showSnackBar(context, 'Weak Password');
                                  } else if (ex.code ==
                                      'email-already-in-use') {
                                    showSnackBar(
                                        context, 'Email already on use!');
                                  }
                                }

                                isLoading = false;
                                setState(() {});
                                showSnackBar(context, 'Success');
                              }
                            },
                            txt: 'Signup',
                            color: Color.fromARGB(255, 156, 112, 150),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
