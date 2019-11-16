import 'package:flutter/material.dart';
import 'package:testapp2/views/settings.dart';

class QualifiedStudents extends StatefulWidget {
  @override
  _QualifiedStudentsState createState() => _QualifiedStudentsState();
}

class _QualifiedStudentsState extends State<QualifiedStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("To Be Certified "),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) => Column(
                children: <Widget>[
                  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://pbs.twimg.com/profile_images/839044974016618496/F_1j5jTO.jpg"),
                        radius: 23,
                        // child: Icon(Icons.person, color: Colors.white)
                      ),
                      title: Text(
                        "Graphics Design ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Kazungu Dancun",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  //divider()
                ],
              )),
    );
  }
}
