// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, use_super_parameters

import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final icons;
  final color;
  final String comment;
  final int count;

  const ListItems(
      {Key? key,
      required this.icons,
      required this.color,
      required this.comment,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      icons,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      count.toString() + 'Excercises',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
