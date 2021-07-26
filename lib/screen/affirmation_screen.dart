import 'package:flutter/material.dart';
import 'package:positive_affirmations_app/quotes/quotes.dart';

class AffirmationScreen extends StatelessWidget {
  final id;

  AffirmationScreen({Key? key, this.id});

  final map = affirmations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Positive Affirmations",
          style: TextStyle(
            color: Colors.teal,
            fontFamily: 'Lateef',
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(affirmations[id].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "AmanticSC",
                fontSize: 30,
                color: Colors.black87,
                fontWeight: FontWeight.w300,
              )),
        ),
      ),
    );
  }
}
