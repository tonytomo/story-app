import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'models/scene.dart';

List<Box> boxList = [];
Future<List<Box>> _openBox() async {
  var boxHistory = await Hive.openBox('scene');
  boxList.add(boxHistory);
  return boxList;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDirectory.path);

  Hive.registerAdapter(SceneAdapter());

  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Story App",
        theme: ThemeData(
            primaryColor: Colors.grey[200],
            accentColor: Colors.deepOrange[400]),
        home: FutureBuilder(
          future: _openBox(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError)
                return Text(snapshot.error.toString());
              else {
                return HomePage();
              }
            } else
              return Scaffold();
          },
        ));
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
