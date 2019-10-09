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
  /// Defaults to `Colors.white`.
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
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),
      body: IconTheme(
        data: IconThemeData(color: Colors.blueAccent),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index % _pages.length];
                },
              ),
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
              bottom: 20.0,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.pause_circle_filled,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Icon(Icons.skip_previous),
                    Icon(Icons.skip_next),
                    Icon(
                      Icons.shuffle,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Icon(Icons.volume_up),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
