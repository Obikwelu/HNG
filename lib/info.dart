import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String value;
  //String age;
  Info({this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal,
          title: Text("Welcome to Zuri Internship"),
        ),
        body: Center(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
