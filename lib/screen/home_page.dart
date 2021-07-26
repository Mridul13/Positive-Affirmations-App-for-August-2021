import 'package:flutter/material.dart';
import 'package:positive_affirmations_app/widgets/calendar.dart';
import 'package:positive_affirmations_app/widgets/month.dart';
import 'package:positive_affirmations_app/widgets/topQuote.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 56;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Positive Affirmations",
          style: TextStyle(
            // color: Theme.of(context).accentColor,
            color: Colors.teal,
            fontFamily: 'Lateef',
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              // Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),
        ),
        child: Column(
          children: [
            TopQuote(height: height),
            Month(
              height: height,
            ),
            Calendar(),
          ],
        ),
      ),
    );
  }
}
