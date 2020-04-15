import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/pages/controllers/controller.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return SizedBox(
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.skip_previous,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.skip_next,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.shuffle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Icon(
              Icons.volume_up,
            ),
          ),
          RotatedBox(
            quarterTurns: -1,
            child: Column(
              children: <Widget>[
                Slider(
                  value: 0.2,
                  onChanged: (double value) {},
                  activeColor: Colors.white,
                  inactiveColor: Colors.amberAccent,
                ),
                Observer(builder: (_) {
                  return Text(
                    controller.inPlayerWitheSong != null
                        ? "${controller.inPlayerWitheSong} m"
                        : '',
                  );
                }),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.pause_circle_filled),
            focusColor: Colors.deepOrangeAccent,
            iconSize: 40.0,
            onPressed: () {
              controller.inPlayerWitheSong = null;
            },
          )
        ],
      ),
    );
  }
}
