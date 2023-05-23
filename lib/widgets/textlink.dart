import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLink extends StatelessWidget {
  String clef;
  TextLink({super.key, required this.clef});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "En appuyant sur '$clef' ,vous acceptez nos termes et conditions aussi bien que notre Politique de confidentialité"),
    );
  }
}