import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.white
  ];

  void initState() {
    super.initState();
    dataMap.putIfAbsent("Classes Attended", () => 8);
    dataMap.putIfAbsent("Classes Missed", () => 2);
    // dataMap.putIfAbsent("Xamarin", () => 2);
    // dataMap.putIfAbsent("Ionic", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 260,
                     //color: Colors.green,
                    child: Stack(children: <Widget>[
                      Stack(children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://www.topdesignfirms.com/pub/blogimages/20170706100047_shutterstock_329205053.jpg",
                                    ),
                                    fit: BoxFit.fitWidth)),
                            height: 200,
                            //  color: Colors.deepOrange,
                            child: Stack(children: <Widget>[])),
                        Positioned(
                            bottom: 100,
                            left: MediaQuery.of(context).size.width * 0.36,
                            child: Text("Web Design",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                )))
                      ]),
                      Positioned(
                          bottom: 10,
                          right: MediaQuery.of(context).size.width * 0.35,
                          child: Center(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  "https://image.cnbcfm.com/api/v1/image/104248657-GettyImages-542776716.jpg?v=1529474045&w=1400&h=950"),
                              // backgroundImage: CachedNetworkImageProvider(
                              //     'https://www.biography.com/.image/t_share/MTY2MzU3Nzk2OTM2MjMwNTkx/elon_musk_royal_society.jpg'),
                              backgroundColor: Colors.grey,
                              //child: Icon(Icons.person, size: 40)),
                            ),
                          ))
                    ])),
                Divider(
                  indent: 15.0,
                  endIndent: 15.0,
                  color: Colors.deepOrange,
                ),
                Container(
                    margin: EdgeInsets.only(top: 8.0),
                    //color: Colors.green,
                    height: 170,
                    child: PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: false,
                      chartValueStyle: TextStyle(color: Colors.white),
                      //chartValueBackgroundColor: Colors.grey[200],
                      colorList: colorList,
                      showLegends: true,
                      decimalPlaces: 1,
                      showChartValueLabel: true,
                      initialAngle: 0,
                      legendStyle: TextStyle(color: Colors.white),
                      chartValueBackgroundColor: Colors.transparent,

                      ///chartValueLabelColor:Colors.white
                      // chartValueStyle: defaultChartValueStyle.copyWith(
                      // color: Colors.blueGrey[900].withOpacity(0.9),
                      // ),
                    )),
                ListTile(
                  leading: CircleAvatar(
                      child: Icon(FontAwesomeIcons.certificate,
                          color: Colors.deepOrange),
                      radius: 25,
                      backgroundColor: Colors.transparent
                      // child: Icon(Icons.person, color: Colors.white)
                      ),
                  title: Text(
                    "Qualified For a Certificate",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.clip,
                  ),
                  subtitle: Container(
                    //width: 10,
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: new LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 200,
                        animation: true,
                        lineHeight: 17.0,
                        animationDuration: 2500,
                        percent: 0.8,
                        center: Text("${8 / 10 * 100} %"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.green,
                      ),
                    ),
                  ),
                  trailing: Text("8/10", style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 18),
                  child: Text("Class Tutor".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      )),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/839044974016618496/F_1j5jTO.jpg"),
                    radius: 25,
                    // child: Icon(Icons.person, color: Colors.white)
                  ),
                  title: Text(
                    "Kazungu Duncan",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.clip,
                  ),
                  subtitle: Text(
                    "Web Design",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
        ));
  }
}
