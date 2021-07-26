import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:positive_affirmations_app/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HexColor("#b2dfdb"),
        accentColor: HexColor("#ffebee"),
      ),
      home: SplashScreen(),
    );
  }
}
