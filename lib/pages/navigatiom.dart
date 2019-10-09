import 'package:flutter/material.dart';

import 'pages/forest.dart';
import 'pages/rain.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final controller = PageController(initialPage: 0);
  bool selected_rain = false;
  bool selected_forest = false;
  bool selected_outher = false;
  bool selected_flow = false;

  final List<Widget> navigationWidgetsList = <Widget>[
    Rain(),
    Forest(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0F0F0F),
        body: Stack(
          children: <Widget>[
            PageView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: navigationWidgetsList.length,
              onPageChanged: (int page) {
                getChangedPageAndMoveBar(page);
              }, controller: controller, itemBuilder: (context, index) {
                return navigationWidgetsList[index]
              },),
            Stack(
            ),
            Padding(
              padding: EdgeInsets.only(left: 325.0),
              child: Column(
                children: <Widget>[
                  VerticalDivider(
                    thickness: 1.25,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            
                          });
                        },
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10.0,
                                    color: selected_rain
                                        ? Colors.blue
                                        : Color(0xFF0F0F0F)),
                                color: selected_rain
                                    ? Colors.blue
                                    : Color(0xFF0F0F0F),
                                borderRadius: BorderRadius.circular(50.0)),
                            duration: Duration(seconds: 2),
                            child: const Text(
                              'RAIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(5, 5))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected_forest = !selected_forest;
                            if (selected_forest == true) {
                              selected_rain = false;
                              selected_outher = false;
                              selected_flow = false;
                            }
                          });
                        },
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10.0,
                                    color: selected_forest
                                        ? Colors.blue
                                        : Color(0xFF0F0F0F)),
                                color: selected_forest
                                    ? Colors.blue
                                    : Color(0xFF0F0F0F),
                                borderRadius: BorderRadius.circular(50.0)),
                            duration: Duration(seconds: 2),
                            child: const Text(
                              'FOREST',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(5, 5))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected_flow = !selected_flow;
                            if (selected_flow == true) {
                              selected_forest = false;
                              selected_outher = false;
                              selected_rain = false;
                            }
                          });
                        },
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10.0,
                                    color: selected_flow
                                        ? Colors.blue
                                        : Color(0xFF0F0F0F)),
                                color: selected_flow
                                    ? Colors.blue
                                    : Color(0xFF0F0F0F),
                                borderRadius: BorderRadius.circular(50.0)),
                            duration: Duration(seconds: 2),
                            child: const Text(
                              'FLOW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(5, 5))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected_outher = !selected_outher;
                            if (selected_outher == true) {
                              selected_forest = false;
                              selected_rain = false;
                              selected_flow = false;
                            }
                          });
                        },
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10.0,
                                    color: selected_outher
                                        ? Colors.blue
                                        : Color(0xFF0F0F0F)),
                                color: selected_outher
                                    ? Colors.blue
                                    : Color(0xFF0F0F0F),
                                borderRadius: BorderRadius.circular(50.0)),
                            duration: Duration(seconds: 2),
                            child: const Text(
                              'OUTHER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(5, 5))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10.0,
                                spreadRadius: 5.0,
                                offset: Offset(5, 5),
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage("images/profile.jpeg"),
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Rain extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Rain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
          child: Text(
            "Rain collection",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
        Stack(
          children: <Widget>[
            GestureDetector(
              onLongPress: () {
                return AnimatedContainer(
                  duration: Duration(seconds: 2),
                  color: Colors.white,
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  width: 200.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage("images/rain.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 80.0, left: 20.0),
                        child: Text(
                          '04',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Being\nin the rain',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 180.0),
              child: Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.cloud,
                  color: Colors.black54,
                  size: 40.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/125510/pexels-photo-125510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'))),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
