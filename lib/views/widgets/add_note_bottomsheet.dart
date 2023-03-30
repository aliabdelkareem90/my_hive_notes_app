import 'package:flutter/material.dart';
import 'package:hive_notes_app/views/widgets/custom_button.dart';
import 'package:hive_notes_app/views/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: mediaQuery.viewInsets,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: const [
              SizedBox(
                height: 16.0,
              ),
              CustomTextField(hintText: 'Title'),
              SizedBox(
                height: 16.0,
              ),
              CustomTextField(
                hintText: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 32.0,
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
