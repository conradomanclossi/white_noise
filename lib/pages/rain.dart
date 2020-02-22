import 'package:flutter/material.dart';

import 'items/big_box.dart';
import 'items/small_items.dart';

class Rain extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Rain> {
  String img1 = 'images/rain.jpeg';
  String img2 = 'images/relaxing_rain.jpg';
  String img3 = 'images/rain_city.jpeg';
  String img4 = 'images/rain_forest';
  
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
