import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  int finalScore;
  final VoidCallback restart;
  Result(this.finalScore, this.restart);
  String get text => "Your final score is: $finalScore";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: TextStyle(fontSize: 30),
      ),
      OutlinedButton(
          onPressed: restart,
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color.fromARGB(32, 19, 33, 228))),
          child: Text(
            "click to restart",
            style: TextStyle(fontSize: 22),
          ))
    ])));
  }
}
