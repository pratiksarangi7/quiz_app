import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      "question": "Q1) What is the largest planet in our solar system?",
      "options": [
        {"text": "a) Venus", "score": 0},
        {"text": "b) Saturn", "score": 0},
        {"text": "c) Jupiter", "score": 1},
        {"text": "d) Neptune", "score": 0}
      ]
    },
    {
      "question":
          "Q2) Which famous scientist came up with the theory of relativity?",
      "options": [
        {"text": "a) Isaac Newton", "score": 0},
        {"text": "b) Albert Einstein", "score": 1},
        {"text": "c) Stephen Hawking", "score": 0},
        {"text": "d) Galileo Galilei", "score": 0}
      ]
    },
    {
      "question": "Q3) What is the smallest country in the world?",
      "options": [
        {"text": "a) Monaco", "score": 0},
        {"text": "b) Vatican city", "score": 1},
        {"text": "c) Liechtenstein", "score": 0},
        {"text": "d) San Marino", "score": 0}
      ]
    },
    {
      "question":
          "Q4) Which country is the world's largest producer of coffee?",
      "options": [
        {"text": "a) Brazil", "score": 1},
        {"text": "b) Colombia", "score": 0},
        {"text": "c) Ethiopia", "score": 0},
        {"text": "d) Vietnam", "score": 0}
      ]
    },
    {
      "question": "Q5) Which city is known as the temple city of India?",
      "options": [
        {"text": "a) New Delhi", "score": 0},
        {"text": "b) Ranchi", "score": 0},
        {"text": "c) Bhubaneswar", "score": 1},
        {"text": "d) Vishakapatnam", "score": 0}
      ]
    },
    {
      "question": "Q6) What is the tallest mountain in the world?",
      "options": [
        {"text": "a) Mount Everest", "score": 1},
        {"text": "b) K2", "score": 0},
        {"text": "c) Kangchenjunga", "score": 0},
        {"text": "d) Lhotse", "score": 0}
      ]
    },
    {
      "question": "Q7) Who was the first U.S. president to be impeached?",
      "options": [
        {"text": "a) Bill Clinton", "score": 0},
        {"text": "b) Andrew Johnson", "score": 1},
        {"text": "c) Richard Nixon", "score": 0},
        {"text": "d) Donald Trump", "score": 0}
      ]
    },
    {
      "question":
          "Q8) Which of the following countries is not part of the United Kingdom?",
      "options": [
        {"text": "a) Wales", "score": 0},
        {"text": "b) Republic of Ireland", "score": 1},
        {"text": "c) Scotland", "score": 0},
        {"text": "d) Northern Ireland", "score": 0}
      ]
    },
    {
      "question":
          "Q9) Who is the creator of the manga series 'Attack on Titan' ",
      "options": [
        {"text": "a) Masashi Kishimoto", "score": 0},
        {"text": "b) Eiichiro Oda", "score": 0},
        {"text": "c) Tite Kubo", "score": 0},
        {"text": "d) Hajime Isayama", "score": 1}
      ]
    },
    {
      "question":
          "Q10) Which language is spoken by the most people in the world?",
      "options": [
        {"text": "a) Spanish", "score": 0},
        {"text": "b) Mandarin Chinese", "score": 0},
        {"text": "c) English", "score": 1},
        {"text": "d) Hindi", "score": 0}
      ]
    },
  ];
  int ques_index = 0;
  int score = 0;
  void selectQuestion(int points) {
    setState(() {
      ques_index += 1;
      score += points;
    });
    print(score);
  }

  void resetQuiz() {
    setState(() {
      ques_index = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Know-It-All",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("A Quiz app for general trivia",
                        style: TextStyle(fontSize: 18)),
                  ],
                )
              ]),
            ),
            body: ques_index < questions.length
                ? Column(
                    children: [
                      Questions(questions[ques_index]["question"] as String),
                      ...(questions[ques_index]['options']
                              as List<Map<String, Object>>)
                          .map((option) {
                        return Options(option["text"] as String,
                            () => selectQuestion(option["score"] as int));
                      }).toList()
                    ],
                  )
                : Result(score, resetQuiz)));
  }
}
