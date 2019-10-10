import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget player() {
  return Positioned(
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
  );
}
