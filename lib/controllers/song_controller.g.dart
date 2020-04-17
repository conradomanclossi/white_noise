// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Song on _SongBase, Store {
  Computed<IconData> _$iconComputed;

  @override
  IconData get icon =>
      (_$iconComputed ??= Computed<IconData>(() => super.icon)).value;

  final _$imgAtom = Atom(name: '_SongBase.img');

  @override
  String get img {
    _$imgAtom.context.enforceReadPolicy(_$imgAtom);
    _$imgAtom.reportObserved();
    return super.img;
  }

  @override
  set img(String value) {
    _$imgAtom.context.conditionallyRunInAction(() {
      super.img = value;
      _$imgAtom.reportChanged();
    }, _$imgAtom, name: '${_$imgAtom.name}_set');
  }

  final _$textAtom = Atom(name: '_SongBase.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$timeAtom = Atom(name: '_SongBase.time');

  @override
  double get time {
    _$timeAtom.context.enforceReadPolicy(_$timeAtom);
    _$timeAtom.reportObserved();
    return super.time;
  }

  @override
  set time(double value) {
    _$timeAtom.context.conditionallyRunInAction(() {
      super.time = value;
      _$timeAtom.reportChanged();
    }, _$timeAtom, name: '${_$timeAtom.name}_set');
  }

  final _$classElementAtom = Atom(name: '_SongBase.classElement');

  @override
  String get classElement {
    _$classElementAtom.context.enforceReadPolicy(_$classElementAtom);
    _$classElementAtom.reportObserved();
    return super.classElement;
  }

  @override
  set classElement(String value) {
    _$classElementAtom.context.conditionallyRunInAction(() {
      super.classElement = value;
      _$classElementAtom.reportChanged();
    }, _$classElementAtom, name: '${_$classElementAtom.name}_set');
  }

  final _$bookmarkAtom = Atom(name: '_SongBase.bookmark');

  @override
  bool get bookmark {
    _$bookmarkAtom.context.enforceReadPolicy(_$bookmarkAtom);
    _$bookmarkAtom.reportObserved();
    return super.bookmark;
  }

  @override
  set bookmark(bool value) {
    _$bookmarkAtom.context.conditionallyRunInAction(() {
      super.bookmark = value;
      _$bookmarkAtom.reportChanged();
    }, _$bookmarkAtom, name: '${_$bookmarkAtom.name}_set');
  }

  final _$_SongBaseActionController = ActionController(name: '_SongBase');

  @override
  String printString() {
    final _$actionInfo = _$_SongBaseActionController.startAction();
    try {
      return super.printString();
    } finally {
      _$_SongBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'img: ${img.toString()},text: ${text.toString()},time: ${time.toString()},classElement: ${classElement.toString()},bookmark: ${bookmark.toString()},icon: ${icon.toString()}';
    return '{$string}';
  }
}
