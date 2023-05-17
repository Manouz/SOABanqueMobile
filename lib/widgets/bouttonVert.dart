import 'package:flutter/material.dart';

class BouttonVert extends StatelessWidget {
  const BouttonVert({
    super.key,
    required this.couleurunique,
    required this.leText,
    required this.laPage,
    required this.laHauteur,
    required this.laLargeur,
    required this.leraduis, required this.laCouleurduText, required this.laCouleurDesBordure,
  });
  final String leText;
  final Color couleurunique;
  final Color laCouleurduText;
  final Color laCouleurDesBordure;
  final Widget laPage;
  final double laHauteur;
  final double laLargeur;
  final double leraduis;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => laPage));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: laLargeur,
          height: laHauteur,
          decoration: BoxDecoration(
              border: Border.all(color: laCouleurDesBordure),
              color: couleurunique,
              borderRadius: BorderRadius.circular(leraduis)),
          child: Center(
            child: Text(
              leText,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: laCouleurduText),
            ),
          ),
        ),
      ),
    );
  }
}
