import 'package:flutter/material.dart';
import 'onlyText.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void startGame() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => TextOnly(title: 'Stories')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Villain Story'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            OutlinedButton(
              child: Text(
                "START GAME",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                startGame();
              },
            ),
            OutlinedButton(
              child: Text(
                "OPTIONS",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                startGame();
              },
            ),
            OutlinedButton(
              child: Text(
                "CREDITS",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                startGame();
              },
            ),
          ],
        ),
      ),
    );
  }
}
