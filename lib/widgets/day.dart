import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:positive_affirmations_app/screen/affirmation_screen.dart';

class Day extends StatelessWidget {
  final data, width, name, id;

  const Day({
    this.data,
    this.width,
    this.id,
    this.name = false,
  });

  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      padding: const EdgeInsets.all(3),
      child: data != -1
          ? id == -1
              ? Container(
                  padding: const EdgeInsets.all(3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: !name
                        ? Colors.white
                        // : HexColor("#e8f5e9"),
                        : Theme.of(context).accentColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(width / 2 - 1)),
                  ),
                  child: Text(
                    data,
                    style: TextStyle(
                      fontFamily: "Lateef",
                      fontSize: 23,
                    ),
                  ),
                )
              // : AnimatedContainer(
              //     duration: const Duration(seconds: 2),
              //     curve: Curves.easeIn,
              // child:
              : InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: AffirmationScreen(id: id)));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: !name
                          ? Colors.white
                          // : HexColor("#e8f5e9"),
                          : Theme.of(context).accentColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(width / 2 - 1)),
                    ),
                    child: Text(
                      data,
                      style: const TextStyle(
                        fontFamily: "Lateef",
                        fontSize: 23,
                      ),
                    ),
                  ),
                )
          // )
          : Container(),
    );
  }
}
