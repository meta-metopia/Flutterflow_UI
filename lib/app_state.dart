import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('ff_token') ?? _token;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _title = '';
  String get title => _title;
  set title(String _value) {
    _title = _value;
  }

  String _orderId = '';
  String get orderId => _orderId;
  set orderId(String _value) {
    _orderId = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
