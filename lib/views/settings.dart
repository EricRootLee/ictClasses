import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp2/views/RemoveStudent.dart';
import 'package:testapp2/views/add_new_class.dart';
import 'package:testapp2/views/login.dart';
import 'package:testapp2/views/qualified_students.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

textStyle() {
  return TextStyle(fontSize: 20, color: Colors.white);
}

divider() {
  return Divider(
    color: Colors.white,
    indent: 10,
    endIndent: 10,
  );
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => RemoveStudent()));
              },
              title: Text(
                "Profile",
                style: textStyle(),
              ),
            ),
            divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => RemoveStudent()));
              },
              title: Text(
                "Qualified Students",
                style: textStyle(),
              ),
            ),
            divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            QualifiedStudents()));
              },
              title: Text(
                "Remove a Student",
                style: textStyle(),
              ),
            ),
            divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => AddNewClass()));
              },
              title: Text(
                "Add  A New Class,",
                style: textStyle(),
              ),
            ),
            divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Login()));
              },
              title: Text(
                "Log Out",
                style: textStyle(),
              ),
            ),
            divider()
          ],
        ),
      ),
    );
  }
}
