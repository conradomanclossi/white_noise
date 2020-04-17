import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/controllers/controller.dart';
import 'package:white_noise/controllers/song_controller.dart';

class BigBox extends StatelessWidget {
  final Song song;

  const BigBox({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 30.0),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage(song.img),
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
              onPressed: () {
                controller.setPlayerSong(song);
              },
              highlightColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              splashColor: Colors.white.withOpacity(0.5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              left: 1,
                              top: 1.5,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.black26,
                                size: 40.0,
                              )),
                          GestureDetector(
                            onTap: () {
                              controller.removeBookmark(song);
                            },
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 175.0),
                      child: Text(
                        song.text,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 180.0),
            child: Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Icon(
                  song.icon,
                  color: Colors.black54,
                  size: 40.0,
                )),
          ),
        ],
      ),
    );
  }
}
