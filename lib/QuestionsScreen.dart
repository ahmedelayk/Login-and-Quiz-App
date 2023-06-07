import 'package:flutter/material.dart';

class Question {
  final String question;
  final bool ans;

  Question(this.question, this.ans);
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [
    Question('The Earth is the closest planet to the Sun in our solar system?',
        false),
    Question('All living organisms on Earth require oxygen to survive?', false),
    Question('Sound travels faster in water than in air?', true),
    Question('The human body is made up of more than 75% water?', true),
    Question('The process of photosynthesis occurs only in plants?', false)
  ];
  int index = 0;
  int score = 0;

  void answerQuestion(bool answer) {
    if (answer == questions[index].ans) {
      setState(() {
        score++;
      });
    }

    if (index < questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
      Navigator.pushNamed(context, '/score', arguments: score);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Quiz App",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Text(
              'Question ${index + 1}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),
            Text(
              questions[index].question,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => answerQuestion(true),
                  child: Text('True'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => answerQuestion(false),
                  child: Text('False'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
