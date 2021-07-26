import 'package:flutter/material.dart';
import 'package:positive_affirmations_app/widgets/day.dart';

class Calendar extends StatelessWidget {
  
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 20;
    return Container(
        width: width,
        child: Column(
          children: [
            Row(
              children: [
                Day(data: "Sun", width: width / 7, name: true, id: -1),
                Day(data: "Mon", width: width / 7, name: true, id: -1),
                Day(data: "Tue", width: width / 7, name: true, id: -1),
                Day(data: "Wed", width: width / 7, name: true, id: -1),
                Day(data: "Thu", width: width / 7, name: true, id: -1),
                Day(data: "Fri", width: width / 7, name: true, id: -1),
                Day(data: "Sat", width: width / 7, name: true, id: -1),
              ],
            ),
            Row(
              children: [
                Day(data: "1", width: width / 7, id: 1),
                Day(data: "2", width: width / 7, id: 2),
                Day(data: "3", width: width / 7, id: 3),
                Day(data: "4", width: width / 7, id: 4),
                Day(data: "5", width: width / 7, id: 5),
                Day(data: "6", width: width / 7, id: 6),
                Day(data: "7", width: width / 7, id: 7),
              ],
            ),
            Row(
              children: [
                Day(data: "8", width: width / 7, id: 8),
                Day(data: "9", width: width / 7, id: 9),
                Day(data: "10", width: width / 7, id: 10),
                Day(data: "11", width: width / 7, id: 11),
                Day(data: "12", width: width / 7, id: 12),
                Day(data: "13", width: width / 7, id: 13),
                Day(data: "14", width: width / 7, id: 14),
              ],
            ),
            Row(
              children: [
                Day(data: "15", width: width / 7, id: 15),
                Day(data: "16", width: width / 7, id: 16),
                Day(data: "17", width: width / 7, id: 17),
                Day(data: "18", width: width / 7, id: 18),
                Day(data: "19", width: width / 7, id: 19),
                Day(data: "20", width: width / 7, id: 20),
                Day(data: "21", width: width / 7, id: 21),
              ],
            ),
            Row(
              children: [
                Day(data: "22", width: width / 7, id: 22),
                Day(data: "23", width: width / 7, id: 23),
                Day(data: "24", width: width / 7, id: 24),
                Day(data: "25", width: width / 7, id: 25),
                Day(data: "26", width: width / 7, id: 26),
                Day(data: "27", width: width / 7, id: 27),
                Day(data: "28", width: width / 7, id: 28),
              ],
            ),
            Row(
              children: [
                Day(data: "29", width: width / 7, id: 29),
                Day(data: "30", width: width / 7, id: 30),
                Day(data: "31", width: width / 7, id: 31),
                Day(data: -1, width: width / 7, id: -1),
                Day(data: -1, width: width / 7, id: -1),
                Day(data: -1, width: width / 7, id: -1),
                Day(data: -1, width: width / 7, id: -1),
              ],
            ),
          ],
        ));
  }
}
