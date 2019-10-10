/*import 'package:flutter/material.dart';

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



import 'dart:math';
import 'package:flutter/material.dart';

import 'pages/forest.dart';
import 'pages/rain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to 'Colors.white'.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return Container(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          color: color,
          type: MaterialType.circle,
          child: Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();

  final List<Widget> _pages = <Widget>[Rain(), Forest()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0F0F0F),
        appBar: AppBar(
          title: Text('White Noise'),
          backgroundColor: Color(0xFF0F0F0F),
        ),
        body: Stack(
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 350.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: DotsIndicator(
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100.0,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.pause_circle_filled),
                        color: Colors.white,
                        focusColor: Colors.blueAccent,
                        iconSize: 40.0,
                        onPressed: () {},
                      ),
                      Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                      ),
                      Slider(
                        value: 0.2,
                        activeColor: Colors.white,
                        onChanged: (double value) {},
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.shuffle,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    'Rain in city - 3.2m',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
