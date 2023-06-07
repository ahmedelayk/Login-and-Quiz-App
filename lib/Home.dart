import 'package:flutter/material.dart';
import 'package:flutter_task_d3/Login.dart';
import 'package:flutter_task_d3/QuestionsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  List<Widget> screens = [
    LoginScreen(),
    QuizScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Text('Login and Quiz app',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  idx = 0;
                });
              },
            ),
            ListTile(
              title: const Text('Quiz App'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  idx = 1;
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Login and Quiz app"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: screens[idx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        selectedLabelStyle: TextStyle(color: Colors.deepPurpleAccent),
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
        currentIndex: idx,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined), label: "Login"),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_outlined), label: "Quiz"),
        ],
      ),
    );
  }
}
