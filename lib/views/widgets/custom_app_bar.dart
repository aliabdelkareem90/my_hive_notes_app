import 'package:flutter/material.dart';

AppBar customAppBar({required String title, required Icon icon}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: icon,
      ),
    ],
  );
}
