import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/pages/controllers/controller.dart';
import 'package:white_noise/pages/items/theme.dart';
import 'package:white_noise/pages/page.dart';
import 'dart:math';

import 'items/player.dart';

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
  }) : super(listenable: controller);

  final PageController controller;

  final int itemCount;

  final ValueChanged<int> onPageSelected;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return Container(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
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

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: themeProvider.getThemeData,
      title: "White Noise",
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemCount: controller.getClassElementList.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.getClassElementList[index];
                return Pages(item);
              },
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: Container(
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 0)),
                  ],
                ),
                //padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: DotsIndicator(
                            controller: _controller,
                            itemCount: controller.getClassElementList.length,
                            onPageSelected: (int page) {
                              _controller.animateToPage(
                                page,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                          )),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 75),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: CupertinoSwitch(
                            activeColor: Colors.white54,
                            trackColor: Colors.black54,
                            value: themeProvider.isLightTheme,
                            onChanged: (bool value) {
                              setState(() {
                                themeProvider.setThemeData = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    // Player
                    Observer(builder: (_) {
                      return controller.inPlayerWitheSong != null
                          ? Align(
                              alignment: Alignment.bottomCenter,
                              child: Player(),
                            )
                          : Text("");
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
