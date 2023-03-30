import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_notes_app/views/notes_view.dart';

import 'constants/constents.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(aNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: aPrimaryColor,
          foregroundColor: Colors.black,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
