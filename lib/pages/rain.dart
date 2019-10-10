import 'package:flutter/material.dart';

import 'items/big_box.dart';
import 'items/small_items.dart';

class Rain extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Rain> {
  String img1 =
      'https://images.pexels.com/photos/1915182/pexels-photo-1915182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String img2 =
      'https://images.pexels.com/photos/125510/pexels-photo-125510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  String img3 =
      'https://images.pexels.com/photos/1523548/pexels-photo-1523548.jpeg?cs=srgb&dl=blur-branch-close-up-1523548.jpg&fm=jpg';
  String img4 =
      'https://images.pexels.com/photos/1529360/pexels-photo-1529360.jpeg?cs=srgb&dl=blur-close-up-color-1529360.jpg&fm=jpg';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        bigBox(img1, '04', 'Being\nin the rain', cloud()),
        smallItems(img2, "Rain in city", "3.2m", playIcon()),
        smallItems(img3, "Rain in forest", "4.5m"),
        smallItems(img4, "Relaxing rain", "2.1m"),
      ],
    );
  }

  /// Icon
  Widget cloud() {
    return Icon(
      Icons.cloud,
      color: Colors.black54,
      size: 40.0,
    );
  }
}
