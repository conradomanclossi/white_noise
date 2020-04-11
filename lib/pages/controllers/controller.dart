import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

class Song {
  String img;
  String text;
  double time;
  String classElement;
  IconData icon;

  Song(this.img, this.text, this.time, this.classElement);

  defineIcon() {
    if (classElement == "rain") {
      return icon = Icons.cloud;
    } else if (classElement == "forest") {
      return icon = Icons.terrain;
    } else if (classElement == "sea") {
      return icon = Icons.brightness_low;
    }
  }

  Song.fromJson(Map<String, dynamic> json)
      : img = json["img"],
        text = json["text"],
        time = json["time"],
        classElement = json["classElement"],
        icon = json["icon"];

  // json["icon"];

  Map<String, dynamic> toJson() => {
        "img": img,
        "text": text,
        "time": time,
        "classElement": classElement,
        "icon": icon
      };

  @override
  String toString() {
    return "Song(img: $img, text: $text, time: $time, classElement: $classElement, icon: $icon)";
  }
}

abstract class _ControllerBase with Store {
  @observable
  Map songs = {
    "Rain": [
      Song("images/rain.jpeg", "Being in the rain", 3.5, "rain"),
      Song("images/relaxing_rain.jpg", "Rain in city", 3.25, "rain"),
      Song("images/rain_city.jpeg", "Rain in forest", 4.5, "rain"),
      Song("images/rain_forest.jpg", "Relaxing rain", 2.1, "rain")
    ],
    "Forest": [
      Song("images/forest_being.jpeg", "Being in the forest", 4.3, "forest"),
      Song("images/forest_birds.jpeg", "Deep in forest", 5.2, "forest"),
      Song("images/forest_deep.jpeg", "Forest and bird's", 4.5, "forest"),
      Song(
          "images/forest_lake.jpeg", "Relaxing forest and lake", 2.1, "forest"),
    ],
    "Sea": [
      Song("images/sea.jpg", "Being in the rain", 7.1, "sea"),
      Song("images/sea_deep.jpg", "Rain in city", 3.2, "sea"),
      Song("images/sea_relax.jpg", "Rain in forest", 4.5, "sea"),
      Song("images/sea_waves.jpg", "Relaxing rain", 2.1, "sea")
    ]
  };

  @computed
  List get keysList {
    return songs.keys.toList();
  }

  @action
  songsList(String value) {
    return songs[value];
  }

  //TODO: make the bookmark
  //TODO: Theme changer
}
