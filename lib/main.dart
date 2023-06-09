import 'package:appointment_app/pages/details_screen.dart';
import 'package:appointment_app/pages/login_page.dart';
import 'package:appointment_app/pages/signup_page.dart';
import 'package:appointment_app/pages/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        HomePage.id: (context) => HomePage(),
        'DetialsScreen': (context) => DetialsScreen(),
      },
    );
  }
}
