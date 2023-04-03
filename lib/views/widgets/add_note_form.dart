import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

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
