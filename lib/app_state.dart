import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<SavedTagStructStruct> _savedTagsList = [];
  List<SavedTagStructStruct> get savedTagsList => _savedTagsList;
  set savedTagsList(List<SavedTagStructStruct> value) {
    _savedTagsList = value;
  }

  void addToSavedTagsList(SavedTagStructStruct value) {
    savedTagsList.add(value);
  }

  void removeFromSavedTagsList(SavedTagStructStruct value) {
    savedTagsList.remove(value);
  }

  void removeAtIndexFromSavedTagsList(int index) {
    savedTagsList.removeAt(index);
  }

  void updateSavedTagsListAtIndex(
    int index,
    SavedTagStructStruct Function(SavedTagStructStruct) updateFn,
  ) {
    savedTagsList[index] = updateFn(_savedTagsList[index]);
  }

  void insertAtIndexInSavedTagsList(int index, SavedTagStructStruct value) {
    savedTagsList.insert(index, value);
  }
}
