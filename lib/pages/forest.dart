import 'package:flutter/material.dart';

import 'items/big_box.dart';
import 'items/small_items.dart';

class Forest extends StatefulWidget {
  @override
  _ForestState createState() => _ForestState();
}

class _ForestState extends State<Forest> {
  String img1 =
      'https://images.pexels.com/photos/4827/nature-forest-trees-fog.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  String img2 =
      'https://images.pexels.com/photos/957024/forest-trees-perspective-bright-957024.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  String img3 =
      'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  String img4 =
      'https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        bigBox(img1, '04', 'Being\nin the forest', cloud()),
        smallItems(img2, "Deep in forest", "5.2m"),
        smallItems(img3, "Forest and bird's", "4.5m"),
        smallItems(img4, "Relaxing forest and lake", "2.1m"),
      ],
    );
  }

  /// Icon
  Widget cloud() {
    return Icon(
      Icons.terrain,
      color: Colors.black54,
      size: 40.0,
    );
  }
}
