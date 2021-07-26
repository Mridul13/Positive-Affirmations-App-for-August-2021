import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';

import 'package:positive_affirmations_app/screen/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        PageTransition(type: PageTransitionType.fade, child: HomePage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Positive Affirmations",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Merienda',
                fontSize: 30,
              ),
            ),
            const Text(
              "for August",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Merienda',
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
