import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/jejak_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
