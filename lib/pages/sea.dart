import 'package:flutter/material.dart';

class Sea extends StatefulWidget {
  @override
  _SeaState createState() => _SeaState();
}

class _SeaState extends State<Sea> {
  PageController pageController;

  List<List<String>> images = [
    ['https://images.pexels.com/photos/1915182/pexels-photo-1915182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'Being in the rain', '1', '7.1m' ],
    ['https://images.pexels.com/photos/125510/pexels-photo-125510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'Rain in city', '2', '3.2m'],
    ['https://images.pexels.com/photos/1523548/pexels-photo-1523548.jpeg?cs=srgb&dl=blur-branch-close-up-1523548.jpg&fm=jpg',
    'Rain in forest', '3', '4.5m'],
    ['https://images.pexels.com/photos/1529360/pexels-photo-1529360.jpeg?cs=srgb&dl=blur-close-up-color-1529360.jpg&fm=jpg',
    'Relaxing rain', '4', '2.1m']
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.3,
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
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: Curves.easeInOut.transform(value) * 200,
              width: Curves.easeInOut.transform(value) * 200,
              child: widget,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: NetworkImage(images[index][0]),
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
