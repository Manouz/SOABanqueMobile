import 'package:flutter/material.dart';

class entetePage extends StatelessWidget {
  final String h4;
  final String h6;

  const entetePage({required this.h4, required this.h6});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          h4,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
       Text(
        h6,
        style: TextStyle(fontSize: 13))
        
      ]),
    );
  }
}
