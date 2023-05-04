import 'package:flutter/material.dart';

class ElevatedButtonPro extends StatelessWidget {
  final String text;
  final VoidCallback transition;

  ElevatedButtonPro(this.text, this.transition);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: transition,
        child: Text(
          text,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), backgroundColor: Colors.blueGrey),
      ),
    );
  }
}
