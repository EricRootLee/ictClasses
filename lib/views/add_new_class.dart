import 'package:flutter/material.dart';
import 'package:testapp2/views/settings.dart';

class AddNewClass extends StatefulWidget {
  @override
  _AddNewClassState createState() => _AddNewClassState();
}

class _AddNewClassState extends State<AddNewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(" Create New Class"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Class Name',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    icon: Text(
                      "C.Name",
                      style: textStyle(),
                    ),
                    hintText: "Class Name",
                    labelText: "Class Name",
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white),
              ),
              // trailing: Row()TextFormField(),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Add",
                style: textStyle(),
              ),
              shape: StadiumBorder(),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
