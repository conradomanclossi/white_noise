import 'package:flutter/material.dart';

class Forest extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Forest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 20.0, bottom: 20.0),
                  child: Text(
                    "Forest collection",
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    GestureDetector(
                      onLongPress: () {
                        return AnimatedContainer(
                          duration: Duration(seconds: 2),
                          color: Colors.white,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          width: 200.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10.0,
                                  spreadRadius: 5.0,
                                  offset: Offset(5, 5))
                            ],
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage("images/rain.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 80.0, left: 20.0),
                                child: Text(
                                  '04',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'Being\nin the rain',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 180.0),
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
      ],
      
    );
  }
}