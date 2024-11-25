// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';

class BuildGridItem extends StatelessWidget {
  final String title;
  final Color baseColor;

  const BuildGridItem({
    Key? key,
    required this.title,
    required this.baseColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: baseColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Add a texture overlay to simulate crayon strokes
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    baseColor.withOpacity(0.8),
                    Colors.white.withOpacity(1.0),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          // Text content
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildGridItem(String title, Color baseColor) {
  return BuildGridItem(
    title: title,
    baseColor: baseColor,
  );
}
