import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  bool _phoneNumberFilled = false;
  bool get phoneNumberFilled => _phoneNumberFilled;
  set phoneNumberFilled(bool value) {
    _phoneNumberFilled = value;
  }

  bool _countryNameFilled = false;
  bool get countryNameFilled => _countryNameFilled;
  set countryNameFilled(bool value) {
    _countryNameFilled = value;
  }

  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? value) {
    _userRef = value;
  }
}
