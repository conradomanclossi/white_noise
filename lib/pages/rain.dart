import 'package:flutter/material.dart';

import 'items/big_box.dart';
import 'items/small_items.dart';
import 'database.dart';

class Rain extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Rain> {
  String img1 = 'images/rain.jpeg';
  String img2 = 'images/relaxing_rain.jpg';
  String img3 = 'images/rain_city.jpeg';
  String img4 = 'images/rain_forest.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        bigBox(img1, '04', 'Being\nin the rain', cloud()),
        Container(
          margin: EdgeInsets.only(top:25),
          width: 300,
          height: 335,
          child: ListView.builder(
            itemCount: whiteNoise["Rain"].length,
            itemBuilder: (BuildContext context, int index){
              Map data = whiteNoise["Rain"][index];
              return smallItems(data["Img"], data["Title"], data["Time"]);
            },
          ),
        ),
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
