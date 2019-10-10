import 'package:flutter/material.dart';

class Forest extends StatefulWidget {
  @override
  _ForestState createState() => _ForestState();
}

class _ForestState extends State<Forest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0, left: 30.0),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1915182/pexels-photo-1915182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Text(
                          '04',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Being\nin the rain',
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
                  Icons.cloud,
                  color: Colors.black54,
                  size: 40.0,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/125510/pexels-photo-125510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text.rich(
                  TextSpan(
                    text: "Rain in city",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold), // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n3.2m',
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1523548/pexels-photo-1523548.jpeg?cs=srgb&dl=blur-branch-close-up-1523548.jpg&fm=jpg'),
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: null
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text.rich(
                  TextSpan(
                    text: "Rain in forest",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold), // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n4.5m',
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1529360/pexels-photo-1529360.jpeg?cs=srgb&dl=blur-close-up-color-1529360.jpg&fm=jpg'),
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: null
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text.rich(
                  TextSpan(
                    text: "Relaxing rain",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold), // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n2.1m',
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
