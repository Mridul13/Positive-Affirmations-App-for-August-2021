import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Month extends StatelessWidget {
  final height;

  const Month({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height / 20, right: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: BorderedText(
        strokeWidth: 1.5,
        strokeColor: Colors.white,
        child: Text(
          "AUGUST, 2021",
          textAlign: TextAlign.end,
          style: TextStyle(
            color: HexColor("#80cbc4"),
            fontFamily: 'Lateef',
            fontSize: 35,
            fontWeight: FontWeight.bold,
            // decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
