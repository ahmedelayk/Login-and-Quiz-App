import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String nametxt;
  late String passwordtxt;

  void _login() {
    Navigator.pushNamed(
      context,
      '/userinfo',
      arguments: {'name': nametxt, 'password': passwordtxt},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Login", style: TextStyle(fontSize: 30)),
            Icon(Icons.person_4_rounded, size: 120),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                nametxt = value;
              },
              // controller: _nameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                passwordtxt = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Set your password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Login', style: TextStyle(fontSize: 15)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20)),
            ),
          ],
        ),
      ),
    );
  }
}
