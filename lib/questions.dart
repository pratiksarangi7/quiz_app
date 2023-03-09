import 'package:flutter/material.dart';
import './main.dart';

class Questions extends StatelessWidget {
  String QuestionText;
  Questions(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        QuestionText,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
