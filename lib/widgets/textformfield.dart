import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  String Label;
  Textformfield(this.Label);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: Label,
      ),
    );
  }
}
