import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/pages/controllers/controller.dart';
import 'package:white_noise/pages/page.dart';
import 'dart:math';

import 'items/player.dart';

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  final PageController controller;

  final int itemCount;

  final ValueChanged<int> onPageSelected;

  final Color color;

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
          color: color,
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
    List keysList = controller.keysList;

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
                itemCount: keysList.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = keysList[index];
                  return Pages(controller.songsList(item));
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
                  child:DotsIndicator(
                      controller: _controller,
                      itemCount: keysList.length,
                      onPageSelected: (int page) {
                        _controller.animateToPage(
                          page,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    )
                ),
              ),
            ),
            player()
          ],
        ),
      ),
    );
  }
}
