// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(15),
              child: Text(
                '😔',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text(
              'Bad',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(15),
              child: Text(
                '😊',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text(
              'Fine',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(15),
              child: Text(
                '😁',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text(
              'Well',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(15),
              child: Text(
                '😂',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text(
              'Excellent',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
