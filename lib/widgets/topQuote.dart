import 'package:flutter/material.dart';

class TopQuote extends StatelessWidget {
  final height;

  const TopQuote({Key? key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height/15),
      width: double.infinity,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 33,
          fontFamily: 'ReenieBeanie',
          color: Colors.black,
        ),
        child: Text(
          ('"One small positive thought can change your whole day."'),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
