import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  List _list = <String>[];
  final _listController = BehaviorSubject<List>.seeded([]);

  Stream<List> get outCurrentList => _listController.stream;
  Sink<List> get inCurrentList => _listController.sink;

  void insertList(String item) {
    _list.add(item);
    inCurrentList.add(_list);
  }

  void removeList(int id) {
    _list.removeAt(id);
    inCurrentList.add(_list);
  }

  int listSize() {
    return _list.length;
  }

  @override
  void dispose() {
    _listController.close();
  }
}
