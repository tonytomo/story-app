import 'package:flutter/material.dart';
import 'package:story_app/choice.dart';

class TextOnly extends StatefulWidget {
  TextOnly({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TextOnlyState createState() => _TextOnlyState();
}

class _TextOnlyState extends State<TextOnly> {
  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int value) {}

  void _nextPage(int value) {
    // Contains conditional if-else
  }

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
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 0,
                            groupValue: _radioValue1,
                            onChanged: _handleRadioValueChange1)
                      ],
                    )
                  ],
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
