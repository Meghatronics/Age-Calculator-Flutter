import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Card(
            margin: EdgeInsets.all(40),
            elevation: 20,
            child: Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 50, 80),
                  fontFamily: 'CurlyFont',
                  fontSize: 60,
                ),
              ),
            ),
          ),
        ),
        
        Expanded(
          flex: 1,
          child: Center(
            child: Text('Tap anywhere to continue...',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 4,
                )),
          ),
        ),
      ],
    );
  }
}
