import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/controllers/controller.dart';
import 'package:white_noise/controllers/song_controller.dart';

class SmallItems extends StatelessWidget {
  final Song song;

  const SmallItems({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 30.0),
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(song.img),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: Offset(5, 5),
                      )
                    ]),
                child: FlatButton(
                  onPressed: () {
                    controller.setPlayerSong(song);
                  },
                  highlightColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Icon(
                    song.icon,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text.rich(
                  TextSpan(
                    text: song.text,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold), // default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${song.time} m',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(onTap: () {
              controller.defineBookmark(song);
            }, child: Observer(builder: (_) {
              return Icon(song.bookmark == true
                  ? Icons.bookmark
                  : Icons.bookmark_border);
            })),
          )
        ],
      ),
    );
  }
}
