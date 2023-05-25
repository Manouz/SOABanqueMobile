import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
 final String txt;
   const Appbar({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(txt),
    );
  }
}
