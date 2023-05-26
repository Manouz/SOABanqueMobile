import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget link;
  final String txt;
  const Button({required this.link, required this.txt});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => link));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 38.0, left: 38),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromRGBO(146, 188, 26, 1),
              borderRadius: BorderRadius.circular(3)),
          child: Center(
              child: Text(
           txt,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
