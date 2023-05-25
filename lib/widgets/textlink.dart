import 'package:flutter/material.dart';


class TextLink extends StatelessWidget {
  final String clef;
  const TextLink({super.key, required this.clef});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text.rich(
        TextSpan(
          children: [
          TextSpan(text: ("En appuyant sur '$clef',vous ")),
          TextSpan(text: ("acceptez nos termes et conditions "),style: TextStyle(color: Colors.blue)),
          TextSpan(text: ("aussi bien que notre ")),
          TextSpan(text: ("Politique de confidentialité."),style: TextStyle(color: Colors.blue)),
        ])
         
          ),
    );
  }
}
