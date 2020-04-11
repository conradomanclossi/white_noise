import 'package:flutter/material.dart';
import 'package:white_noise/pages/controllers/controller.dart';

Widget smallItems(Song song) {
  var _img = song.img;
  var _titulo = song.text;
  var _time = song.time;
  var _iconOptional = song.icon;
  return Padding(
    padding: const EdgeInsets.only(top: 30.0, left: 30.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage(_img),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(5, 5),
                )
              ]),
          child: FlatButton(
            onPressed: () {},
            highlightColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            splashColor: Colors.white.withOpacity(0.5),
            child: Icon(
              _iconOptional,
              color: Colors.white,
              size: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text.rich(
            TextSpan(
              text: _titulo,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold), // default text style
              children: <TextSpan>[
                TextSpan(
                  text: '\n$_time',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
