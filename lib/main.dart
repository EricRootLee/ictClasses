import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp2/views/login.dart';

void main() => runApp(AttendanceApp());

class AttendanceApp extends StatefulWidget {
  final String title;

  AttendanceApp({this.title});
  @override
  _AttendanceAppState createState() => _AttendanceAppState();
}

class _AttendanceAppState extends State<AttendanceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.black, accentColor: Colors.deepOrange),
      home: Login(),
    );
  }
}
