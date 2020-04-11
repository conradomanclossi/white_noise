import 'package:flutter/material.dart';
import 'package:white_noise/pages/controllers/controller.dart';
import 'package:white_noise/pages/items/small_items.dart';

class Pages extends StatelessWidget {
  final List<Song> songs;

  const Pages(this.songs, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: 300,
            height: 335,
            margin: EdgeInsets.only(top: 25),
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (BuildContext context, int index) {
                return smallItems(songs[index]);
              },
            ))
      ],
    );
  }
}
