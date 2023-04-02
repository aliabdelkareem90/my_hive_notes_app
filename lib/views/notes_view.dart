import 'package:flutter/material.dart';
import 'package:hive_notes_app/views/widgets/add_note_bottomsheet.dart';
import 'package:hive_notes_app/views/widgets/custom_app_bar.dart';

import 'widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Notes',
        icon: const Icon(Icons.search_rounded),
      ),
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
            isScrollControlled: true,
          );
          // setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
