import 'package:flutter/material.dart';

class Sea extends StatefulWidget {
  @override
  _SeaState createState() => _SeaState();
}

class _SeaState extends State<Sea> {
  PageController pageController;

  List<List<String>> images = [
    ['images/sea.jpg', 'Being in the rain', '1', '7.1m'],
    ['images/sea_deep.jpg', 'Rain in city', '2', '3.2m'],
    ['images/sea_relax.jpg', 'Rain in forest', '3', '4.5m'],
    ['images/sea_waves.jpg', 'Relaxing rain', '4', '2.1m']
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.35,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, position) {
          return imageSlider(position);
        });
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1);
        }
        return Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: Curves.easeInOut.transform(value) * 20),
                  height: Curves.easeInOut.transform(value) * 250,
                  width: Curves.easeInOut.transform(value) * 200,
                  child: Stack(
                    children: <Widget>[
                      widget,
                      AnimatedOpacity(
                        opacity: index == pageController.page ? 1 : 0,
                        duration: Duration(milliseconds: 10),
                        child: Stack(
                          children: <Widget>[
                            widget,
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 160.0,
                                left: 8,
                              ),
                              child: Text(
                                images[index][1],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 170),
                  child: AnimatedOpacity(
                    opacity: index == pageController.page ? 1 : 0,
                    duration: Duration(seconds: 1),
                    child: Container(
                        width: 60.0,
                        height: 60.0,
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
                          Icons.brightness_low,
                          color: Colors.black54,
                          size: 30.0,
                        )),
                  ),
                )
              ],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(images[index][0]),
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
            borderRadius: BorderRadius.circular(25.0),
          ),
          splashColor: Colors.white.withOpacity(0.5),
          child: Align(
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
}
