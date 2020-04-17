import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'song_controller.g.dart';

class Song = _SongBase with _$Song;

abstract class _SongBase with Store {
  _SongBase({this.img, this.text, this.time, this.classElement, this.bookmark});

  @observable
  String img;

  @observable
  String text;

  @observable
  double time;

  @observable
  String classElement;

  @observable
  bool bookmark = false;

  @computed
  IconData get icon {
    IconData _icon;
    if (classElement == "rain") {
      return _icon = Icons.cloud;
    } else if (classElement == "forest") {
      return _icon = Icons.terrain;
    } else if (classElement == "sea") {
      return _icon = Icons.brightness_low;
    }
    return _icon;
  }

  @action
  String printString() {
    return "Img: $img, text: $text, time: $time, classElement: $classElement, icon: ${icon.toString()}, bookmark: $bookmark";
  }
}
