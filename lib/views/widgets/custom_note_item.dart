import 'dart:math';

import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  CustomNoteItem({super.key});

  List<Color> colors = [
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.cyanAccent,
    Colors.indigoAccent,
    Colors.orangeAccent
  ];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    var height = 220 + random.nextInt((250 + 1) - 220).toDouble();

    return Container(
      height: height,
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colors[random.nextInt(colors.length)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Flutter tips',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_rounded,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 16,
              bottom: 16,
            ),
            child: Text(
              'Build a flutter notes app with hive Build a flutter notes app with hive',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text(
              'March 28, 2023',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
