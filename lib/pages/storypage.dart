import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:story_app/models/scene.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final sceneBox = Hive.box('scene');
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final scene = sceneBox.getAt(index) as Scene;

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
                    '${scene.scene}',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Radio Button
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[_buildRadioTile()],
                ),
              ),
              OutlinedButton(
                  child: Text("Next"),
                  onPressed: () {
                    _changeScene();
                  }),
            ],
          ),
        ));
  }
}

Widget _buildRadioTile() {}

void _changeScene() {}
