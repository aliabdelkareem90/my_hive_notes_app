import 'package:flutter/material.dart';
import 'package:hive_notes_app/views/widgets/custom_app_bar.dart';
import 'package:hive_notes_app/views/widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Note',
        icon: const Icon(Icons.done),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: const [
            CustomTextField(hintText: 'Title', onSaved: null),
            SizedBox(
              height: 16.0,
            ),
            CustomTextField(hintText: 'Content', maxLines: 5, onSaved: null),
          ],
        ),
      ),
    );
  }
}
