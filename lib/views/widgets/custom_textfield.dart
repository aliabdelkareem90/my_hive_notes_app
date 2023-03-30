import 'package:flutter/material.dart';
import 'package:hive_notes_app/constants/constents.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;

  const CustomTextField({
    required this.hintText,
    this.maxLines = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: aPrimaryColor,
      maxLines: maxLines,
      autofocus: true,
      // focus shiftting
      textInputAction:
          hintText == "Title" ? TextInputAction.next : TextInputAction.done,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(aPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
