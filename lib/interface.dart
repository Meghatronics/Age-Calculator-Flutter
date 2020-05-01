import 'package:flutter/material.dart';
import 'welcome.dart';
import 'input.dart';
class MakeApp extends StatefulWidget {
  @override
  _MakeAppState createState() => _MakeAppState();
}

class _MakeAppState extends State<MakeApp> {
  int screen = 1;
  @override
  Widget build(BuildContext context) {
    if (screen == 1) {
      return FlatButton(
        onPressed: (){
          setState(() {
            screen =2;
          });
        },
        child: Welcome(),);
    } else {
      return InputScreen();
    }
  }
}
