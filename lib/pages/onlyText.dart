import 'package:flutter/material.dart';
import 'choice.dart';

class TextOnly extends StatefulWidget {
  TextOnly({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TextOnlyState createState() => _TextOnlyState();
}

class _TextOnlyState extends State<TextOnly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(),
              // TextArea
              Container(
                padding: EdgeInsets.all(8),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Text(
                    "Paragraph",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Radio Button
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[],
                ),
              ),
              OutlinedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ChoicePage()),
                    );
                  }),
            ],
          ),
        ));
  }
}
