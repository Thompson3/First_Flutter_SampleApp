// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Top Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigates back to AboutPage
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Bobby Singer',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.wifi_calling_3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Chat Section
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            _buildChatBubble(
                              context,
                              "Hey!, wats up?",
                              "11:04",
                              alignment: Alignment.centerLeft,
                              isSender: false,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "I'm alright, and you?",
                              "11:17",
                              alignment: Alignment.centerRight,
                              isSender: true,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "I dey alright. you submit am for me?",
                              "1:02",
                              alignment: Alignment.centerLeft,
                              isSender: false,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "Submit wetin?",
                              "1:39",
                              alignment: Alignment.centerRight,
                              isSender: true,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "My Assignment",
                              "1:40",
                              alignment: Alignment.centerLeft,
                              isSender: false,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "Omorr, Obidindu tear our script all oo",
                              "1:42",
                              alignment: Alignment.centerRight,
                              isSender: true,
                            ),
                            SizedBox(height: 10),
                            _buildChatBubble(
                              context,
                              "Choooiiiiii 🙆🏽‍♂️💔",
                              "1:44",
                              alignment: Alignment.centerLeft,
                              isSender: false,
                            ),
                          ],
                        ),
                      ),

                      // Chat Input //
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Write a message...',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                  ),
                                  Icon(Icons.image_outlined,
                                      color: Colors.grey[700]),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(15),
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                          ),
                        ],
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

  Widget _buildChatBubble(BuildContext context, String message, String time,
      {required Alignment alignment, required bool isSender}) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue[800] : Colors.blue[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSender ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(width: 20),
            Text(
              time,
              style: TextStyle(
                color: isSender ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
