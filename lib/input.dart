import 'package:flutter/material.dart';
import 'dart:async';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String dateOfBirth = DateTime.now().toString().substring(0, 11);
  DateTime selected;
  IconData iconReflection = Icons.arrow_drop_down_circle;
  Color myColor;
  int ageInDays;
  int age;
  String output = 'When is your birthday?';
  Future pickDate() async {
    selected = await showDatePicker(
      initialDatePickerMode: DatePickerMode.year,
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1555),
      lastDate: new DateTime(2021),
    );
    setState(() {
      if (selected != null && !selected.isAfter(DateTime.now())) {
        dateOfBirth = selected.toString().substring(0, 10);
        Duration ageDuration = DateTime.now().difference(selected);
        ageInDays = ageDuration.inDays;
        age = ageInDays ~/ 365.25;
        iconReflection = Icons.check;
      } else {
        iconReflection = Icons.arrow_drop_down_circle;
      }

      if (age == null)
        output = 'When is your birthday?';
      else
        output = 'You are $age years old';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                       Text(
              '$output',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              foregroundDecoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(255, 255, 50, 80)),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                onTap: () => pickDate(),
                title: Text(
                  '$dateOfBirth',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                trailing: Icon(
                  iconReflection,
                  size: 35,
                  color: myColor,
                ),
              ),
            ),
          ],
        ));
  }
}
