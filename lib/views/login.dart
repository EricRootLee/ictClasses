import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp2/views/dashboard.dart';
import 'package:testapp2/views/progress.dart';
import 'package:testapp2/views/settings.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.blue,
                child: Text("Login", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Dashboard()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Ict Class Attendance"),
          //   centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context) => Settings()));
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18),
              child: Text("CLASSES AVAILABLE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18)),
            ),
            Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              height: 80,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  height: 100,
                  width: 140,
                  child: Card(
                      color: Colors.deepOrange,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.web, color: Colors.white),
                          Expanded(
                              child: ListTile(
                                  title: Text(
                                    "Web Design",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.clip,
                                  ),
                                  subtitle: Text(
                                    "Kazungu Dancun",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )))
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  width: 140,
                  child: Card(
                      color: Colors.grey.withAlpha(90),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.mobile_screen_share, color: Colors.white),
                          Expanded(
                              child: ListTile(
                                  title: Text(
                                    "Mobile App Development",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    "Kazungu Dancun",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )))
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  width: 140,
                  child: Card(
                      color: Colors.deepOrange,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.image, color: Colors.white),
                          Expanded(
                              child: ListTile(
                                  title: Text(
                                    "Graphics Design ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    "Kazungu Dancun",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )))
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  width: 140,
                  child: Card(
                      color: Colors.grey.withAlpha(90),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.videocam, color: Colors.white),
                          Expanded(
                              child: ListTile(
                                  title: Text(
                                    "Videography",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    "Kazungu Dancun",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )))
                        ],
                      )),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 18),
              child: Text("CLASSES ENROLLED",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18)),
            ),
            Container(
                //margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 310,
                // color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    ListTile(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (BuildContext context) => Progress()));
                        },
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 25,
                            child: Icon(Icons.web, color: Colors.white)),
                        title: Text("Web Design",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("Tutor : Dancun Kazungu",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200)),
                        trailing: Icon(Icons.thumb_up, color: Colors.green)),
                    ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 25,
                            child: Icon(Icons.mobile_screen_share,
                                color: Colors.white)),
                        title: Text("Mobile App Development",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("Tutor : Dancun Kazungu",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200)),
                        trailing: Icon(Icons.thumb_up, color: Colors.green)),
                    ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 25,
                            child: Icon(Icons.image, color: Colors.white)),
                        title: Text("Graphics Design",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("Tutor : Dancun Kazungu",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200)),
                        trailing: Icon(Icons.thumb_up, color: Colors.green)),
                    ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 25,
                            child: Icon(Icons.videocam, color: Colors.white)),
                        title: Text("Videography",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("Tutor : Dancun Kazungu",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200)),
                        trailing: Icon(Icons.thumb_up, color: Colors.green)),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        elevation: 13,
                        onPressed: () {},
                        child: Text("Change My Name",
                            style: TextStyle(color: Colors.white)),
                        shape: StadiumBorder(),
                        color: Colors.deepOrange,
                        highlightColor: Colors.blue,
                        hoverColor: Colors.blue,
                        splashColor: Colors.blue),
                    RaisedButton(
                        onPressed: () {},
                        child: Text("Change Image",
                            style: TextStyle(color: Colors.white)),
                        shape: StadiumBorder(),
                        color: Colors.black,
                        // color: Colors.deepOrange,
                        highlightColor: Colors.blue,
                        hoverColor: Colors.blue,
                        splashColor: Colors.deepOrange)
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 18),
              child: Text("ALL STUDENTS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18)),
            ),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("John Smith",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text("+254791015095",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200)),
                trailing: Text("40 % ",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold))),
            Divider(color: Colors.grey, endIndent: 20, indent: 20),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("John Smith",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text("+254791015095",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200)),
                trailing: Text("40 % ",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold))),
            Divider(color: Colors.grey, endIndent: 20, indent: 20),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("John Smith",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text("+254791015095",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200)),
                trailing: Text("40 % ",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold))),
            Divider(color: Colors.grey, endIndent: 20, indent: 20),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("John Smith",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text("+254791015095",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200)),
                trailing: Text("40 % ",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold))),
            Divider(color: Colors.grey, endIndent: 20, indent: 20),
          ],
        ),
      ),
    );
  }
}
