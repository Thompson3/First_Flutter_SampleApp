// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble/pages/emoji/emoji.dart';
import 'package:dribble/pages/items/list_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    // Intro personel //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Carex!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '17 Nov, 2024',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(13),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // Search Bar //
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // how you feel //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // How i actually feel //
                    Emoji(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        //  Excrcise  //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                                child: Text(
                              'Exercises',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                            Icon(Icons.more_horiz)
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        // List of Items //
                        Expanded(
                          child: ListView(
                            children: [
                              ListItems(
                                  icons: Icons.favorite,
                                  color: Colors.orange,
                                  comment: 'Learning Skills',
                                  count: 10),
                              ListItems(
                                  icons: Icons.person_2,
                                  color: Colors.green,
                                  comment: 'Human Thinking',
                                  count: 54),
                              ListItems(
                                  icons: Icons.chrome_reader_mode,
                                  color: Colors.blue,
                                  comment: 'Learning Skills',
                                  count: 13),
                              ListItems(
                                  icons: Icons.flight,
                                  color: Colors.pink,
                                  comment: 'Adventure',
                                  count: 20),
                              ListItems(
                                  icons: Icons.run_circle_outlined,
                                  color: Colors.brown,
                                  comment: 'Athlete',
                                  count: 66),
                              ListItems(
                                  icons: Icons.attach_money,
                                  color: Colors.purple,
                                  comment: 'Mint',
                                  count: 10)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
