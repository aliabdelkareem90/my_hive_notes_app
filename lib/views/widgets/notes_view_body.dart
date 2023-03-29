import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_notes_app/views/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesViewBody extends StatelessWidget {
  NotesViewBody({super.key});

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MasonryGridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(5),
            child: CustomNoteItem(),
          );
        },
      ),
    );
  }
}
