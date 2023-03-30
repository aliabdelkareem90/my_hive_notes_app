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
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16.0,
          ),
          CustomTextField(
            hintText: 'Title',
            onSaved: (val) {
              title = val;
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextField(
            hintText: 'Content',
            onSaved: (val) {
              subTitle = val;
            },
            maxLines: 5,
          ),
          const SizedBox(
            height: 32.0,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
