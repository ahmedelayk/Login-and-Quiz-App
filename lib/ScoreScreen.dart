import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late int score = ModalRoute.of(context)?.settings.arguments as int;
    late bool passed = score >= 3;

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              passed ? 'Winnnnner' : 'Loooooser',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: passed ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
