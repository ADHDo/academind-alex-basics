import 'package:FirstAssignment/displaytext.dart';
import 'package:FirstAssignment/textcontrol.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(App());
}

String displayText = 'Some Text!';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void changeText() {
    setState(() {
      displayText = 'NEW TEXT!!!!!!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('First Assignment App')),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  DisplayText(displayText),
                  TextControl(changeText)
                ]))));
  }
}
