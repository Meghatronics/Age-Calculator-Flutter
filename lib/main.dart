import 'package:flutter/material.dart';
import 'interface.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AGE CALCULATOR'),
          leading: IconButton(
            icon: Icon(Icons.access_time),
            iconSize: 30,
            onPressed: () {
              print('Kinni gan na');
            },
          ),
        ),
        body: MakeApp(),
      ),
    );
  }
}
