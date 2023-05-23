import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  String? email;
  String? password;
  GlobalKey<FormState> formkey = GlobalKey();
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
                            
  try {
    await registerUser();
  } on FirebaseAuthException catch (ex) {
    if (ex.code == 'weak-password') {
      showSnackBar(context, 'Weak Password');
    } else if (ex.code == 'email-already-in-use') {
      showSnackBar(context, 'Email already on use!');
    }
  }
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
                width: 150,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
