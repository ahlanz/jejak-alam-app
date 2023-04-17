import 'package:flutter/material.dart';
import 'package:jejak_alam/pages/home/main_page.dart';
import 'package:jejak_alam/pages/sign_in_page.dart';
import 'package:jejak_alam/pages/sign_upPage.dart';
import 'package:jejak_alam/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-Up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
