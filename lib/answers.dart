import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  String answerOption;
  VoidCallback func;
  Options(this.answerOption, this.func);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[900],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                answerOption,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
