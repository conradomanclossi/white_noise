import 'package:mobx/mobx.dart';
import 'song_controller.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  // Songs List
  @observable
  ObservableList<Song> songs = [
    Song(
        img: "images/rain.jpeg",
        text: "Being in the rain",
        time: 3.5,
        classElement: "rain"),
    Song(
        img: "images/relaxing_rain.jpg",
        text: "Rain in city",
        time: 3.25,
        classElement: "rain"),
    Song(
        img: "images/rain_city.jpeg",
        text: "Rain in forest",
        time: 4.5,
        classElement: "rain"),
    Song(
        img: "images/rain_forest.jpg",
        text: "Relaxing rain",
        time: 2.1,
        classElement: "rain"),
    Song(
        img: "images/forest_being.jpeg",
        text: "Being in the forest",
        time: 4.3,
        classElement: "forest"),
    Song(
        img: "images/forest_birds.jpeg",
        text: "Deep in forest",
        time: 5.2,
        classElement: "forest"),
    Song(
        img: "images/forest_deep.jpeg",
        text: "Forest and bird's",
        time: 4.5,
        classElement: "forest"),
    Song(
        img: "images/forest_lake.jpeg",
        text: "Relaxing forest",
        time: 2.1,
        classElement: "forest"),
    Song(
        img: "images/sea.jpg",
        text: "Being in the rain",
        time: 7.1,
        classElement: "sea"),
    Song(
        img: "images/sea_deep.jpg",
        text: "Rain in city",
        time: 3.2,
        classElement: "sea"),
    Song(
        img: "images/sea_relax.jpg",
        text: "Rain in forest",
        time: 4.5,
        classElement: "sea"),
    Song(
        img: "images/sea_waves.jpg",
        text: "Relaxing rain",
        time: 2.1,
        classElement: "sea"),
  ].asObservable();

  @computed
  ObservableList<String> get getClassElementList {
    ObservableList<String> _list = ObservableList<String>();
    songs.forEach((element) {
      _list.add(element.classElement.toString());
    });
    return _list.toSet().toList().asObservable();
  }

  @action
  ObservableList<Song> filterSongForClass(String filter) {
    ObservableList<Song> _list = ObservableList<Song>().asObservable();
    songs.forEach((element) {
      if (element.classElement == filter) {
        _list.add(element);
      }
    });
    return _list;
  }

  // Bookmark Song
  @observable
  ObservableList<Song> bookmarksSongs = ObservableList<Song>();

  @action
  defineBookmark(Song value) {
    // Icon
    songs.forEach((element) {
      if (element.classElement == value.classElement) {
        if (element == value) {
          element.bookmark = true;
        } else {
          element.bookmark = false;
        }
      }
    });

    // List add or remove
    bookmarksSongs.removeWhere((element) {
      return element.classElement == value.classElement;
    });
    bookmarksSongs.add(value);
  }

  @action
  newDefineBookmark(Song song) {
    songs.forEach((element) {
      if (element.classElement == song.classElement) {
        if (element == song) {
          element.bookmark = true;
        } else {
          element.bookmark = false;
        }
      }
    });
  }

  @action
  removeBookmark(Song value) {
    bookmarksSongs.remove(value);

    // Icon
    songs.forEach((element) {
      if (element.classElement == value.classElement) {
        element.bookmark = false;
      }
    });
  }

  // Player
  @observable
  String inPlayerWitheSong;

  @action
  setWhiteNoise(Song song) => inPlayerWitheSong = "${song.text} - ${song.time}";

  @action
  bookmark(String classElement) {
    return bookmarksSongs.where((element) {
      return element.classElement == classElement;
    });
  }
}
