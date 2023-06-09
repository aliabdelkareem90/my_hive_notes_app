import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  CustomNoteItem({super.key});

  final List<Color> colors = [
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.indigoAccent,
    Colors.orangeAccent
  ];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    var height = 200 + random.nextInt((250 + 1) - 200).toDouble();

    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const EditNoteView(),
        ),
      ),
      child: Container(
        height: height,
        padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16),
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
                    color: Color.fromARGB(190, 0, 0, 0),
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
      ),
    );
  }
}
