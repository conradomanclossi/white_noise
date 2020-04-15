// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  Computed<ObservableList<String>> _$getClassElementListComputed;

  @override
  ObservableList<String> get getClassElementList =>
      (_$getClassElementListComputed ??=
              Computed<ObservableList<String>>(() => super.getClassElementList))
          .value;

  final _$songsAtom = Atom(name: '_ControllerBase.songs');

  @override
  ObservableList<Song> get songs {
    _$songsAtom.context.enforceReadPolicy(_$songsAtom);
    _$songsAtom.reportObserved();
    return super.songs;
  }

  @override
  set songs(ObservableList<Song> value) {
    _$songsAtom.context.conditionallyRunInAction(() {
      super.songs = value;
      _$songsAtom.reportChanged();
    }, _$songsAtom, name: '${_$songsAtom.name}_set');
  }

  final _$bookmarksSongsAtom = Atom(name: '_ControllerBase.bookmarksSongs');

  @override
  ObservableList<Song> get bookmarksSongs {
    _$bookmarksSongsAtom.context.enforceReadPolicy(_$bookmarksSongsAtom);
    _$bookmarksSongsAtom.reportObserved();
    return super.bookmarksSongs;
  }

  @override
  set bookmarksSongs(ObservableList<Song> value) {
    _$bookmarksSongsAtom.context.conditionallyRunInAction(() {
      super.bookmarksSongs = value;
      _$bookmarksSongsAtom.reportChanged();
    }, _$bookmarksSongsAtom, name: '${_$bookmarksSongsAtom.name}_set');
  }

  final _$inPlayerWitheSongAtom =
      Atom(name: '_ControllerBase.inPlayerWitheSong');

  @override
  String get inPlayerWitheSong {
    _$inPlayerWitheSongAtom.context.enforceReadPolicy(_$inPlayerWitheSongAtom);
    _$inPlayerWitheSongAtom.reportObserved();
    return super.inPlayerWitheSong;
  }

  @override
  set inPlayerWitheSong(String value) {
    _$inPlayerWitheSongAtom.context.conditionallyRunInAction(() {
      super.inPlayerWitheSong = value;
      _$inPlayerWitheSongAtom.reportChanged();
    }, _$inPlayerWitheSongAtom, name: '${_$inPlayerWitheSongAtom.name}_set');
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  ObservableList<Song> filterSongForClass(String filter) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.filterSongForClass(filter);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic defineBookmark(Song value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.defineBookmark(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic newDefineBookmark(Song song) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.newDefineBookmark(song);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeBookmark(Song value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.removeBookmark(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setWhiteNoise(Song song) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.setWhiteNoise(song);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic bookmark(String classElement) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.bookmark(classElement);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'songs: ${songs.toString()},bookmarksSongs: ${bookmarksSongs.toString()},inPlayerWitheSong: ${inPlayerWitheSong.toString()},getClassElementList: ${getClassElementList.toString()}';
    return '{$string}';
  }
}
