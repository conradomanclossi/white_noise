// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _ControllerBase, Store {
  Computed<List<dynamic>> _$keysListComputed;

  @override
  List<dynamic> get keysList =>
      (_$keysListComputed ??= Computed<List<dynamic>>(() => super.keysList))
          .value;

  final _$songsAtom = Atom(name: '_ControllerBase.songs');

  @override
  Map<dynamic, dynamic> get songs {
    _$songsAtom.context.enforceReadPolicy(_$songsAtom);
    _$songsAtom.reportObserved();
    return super.songs;
  }

  @override
  set songs(Map<dynamic, dynamic> value) {
    _$songsAtom.context.conditionallyRunInAction(() {
      super.songs = value;
      _$songsAtom.reportChanged();
    }, _$songsAtom, name: '${_$songsAtom.name}_set');
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  dynamic songsList(String value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction();
    try {
      return super.songsList(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'songs: ${songs.toString()},keysList: ${keysList.toString()}';
    return '{$string}';
  }
}
