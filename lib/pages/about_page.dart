// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble/pages/items/grid_items.dart';
import 'package:dribble/pages/navbar/find_page.dart';
import 'package:dribble/pages/items/user_list.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                  SizedBox(height: 10),
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
                            '17 Dec, 2024',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(13),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // Search bar
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // White section for Div
            SizedBox(height: 30),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Category Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Grid Section
                      GridView.count(
                        crossAxisCount: 2, // Two columns
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 2.0, // Makes the boxes rectangular
                        shrinkWrap: true, // Prevents GridView from expanding
                        physics:
                            NeverScrollableScrollPhysics(), // Disables scrolling
                        children: [
                          buildGridItem('Relationship', Colors.purple),
                          buildGridItem('Career', Colors.blue),
                          buildGridItem('Education', Colors.orange),
                          buildGridItem('Other', Colors.pink),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Consultant Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Consultant',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),
                      // List Section
                      Flexible(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FindPage(),
                                  ),
                                );
                              },
                              child: UserList(
                                icons: Icons.person,
                                color: Colors.orange,
                                comment: 'Bobby Singer',
                                subcomment: 'Education',
                              ),
                            ),
                            UserList(
                              icons: Icons.person_2,
                              color: Colors.green,
                              comment: 'Dean Winchester',
                              subcomment: 'Other',
                            ),
                            UserList(
                              icons: Icons.person_2_outlined,
                              color: Colors.blue,
                              comment: 'Pablo FC',
                              subcomment: 'Relationship',
                            ),
                            UserList(
                              icons: Icons.person_3,
                              color: Colors.pink,
                              comment: 'Zatro',
                              subcomment: 'Other',
                            ),
                            UserList(
                              icons: Icons.person_4_outlined,
                              color: Colors.brown,
                              comment: 'Glory Artist',
                              subcomment: 'Career',
                            ),
                            UserList(
                              icons: Icons.person_4_outlined,
                              color: Colors.purple,
                              comment: 'Jackson Tech',
                              subcomment: 'Education',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
