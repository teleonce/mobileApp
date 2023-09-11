import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  List<String> _menuItems = ['Home', 'Search', 'Directory', 'Book', 'Profile'];
  List<String> get menuItems => _menuItems;
  set menuItems(List<String> _value) {
    _menuItems = _value;
  }

  void addToMenuItems(String _value) {
    _menuItems.add(_value);
  }

  void removeFromMenuItems(String _value) {
    _menuItems.remove(_value);
  }

  void removeAtIndexFromMenuItems(int _index) {
    _menuItems.removeAt(_index);
  }

  void updateMenuItemsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _menuItems[_index] = updateFn(_menuItems[_index]);
  }

  void insertAtIndexInMenuItems(int _index, String _value) {
    _menuItems.insert(_index, _value);
  }

  String _menuActiveItem = '';
  String get menuActiveItem => _menuActiveItem;
  set menuActiveItem(String _value) {
    _menuActiveItem = _value;
  }

  List<Color> _menuItemColors = [
    Color(4290616064),
    Color(4283261100),
    Color(4282297928),
    Color(4293935181),
    Color(4278298585)
  ];
  List<Color> get menuItemColors => _menuItemColors;
  set menuItemColors(List<Color> _value) {
    _menuItemColors = _value;
  }

  void addToMenuItemColors(Color _value) {
    _menuItemColors.add(_value);
  }

  void removeFromMenuItemColors(Color _value) {
    _menuItemColors.remove(_value);
  }

  void removeAtIndexFromMenuItemColors(int _index) {
    _menuItemColors.removeAt(_index);
  }

  void updateMenuItemColorsAtIndex(
    int _index,
    Color Function(Color) updateFn,
  ) {
    _menuItemColors[_index] = updateFn(_menuItemColors[_index]);
  }

  void insertAtIndexInMenuItemColors(int _index, Color _value) {
    _menuItemColors.insert(_index, _value);
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool _value) {
    _drawer = _value;
  }

  String _logo = '';
  String get logo => _logo;
  set logo(String _value) {
    _logo = _value;
  }

  bool _live = false;
  bool get live => _live;
  set live(bool _value) {
    _live = _value;
  }

  String _link = '';
  String get link => _link;
  set link(String _value) {
    _link = _value;
  }

  String _state = '';
  String get state => _state;
  set state(String _value) {
    _state = _value;
  }

  String _search = '';
  String get search => _search;
  set search(String _value) {
    _search = _value;
  }

  String _weatherIcon = '';
  String get weatherIcon => _weatherIcon;
  set weatherIcon(String _value) {
    _weatherIcon = _value;
  }

  String _temp = '';
  String get temp => _temp;
  set temp(String _value) {
    _temp = _value;
  }

  bool _showAds = true;
  bool get showAds => _showAds;
  set showAds(bool _value) {
    _showAds = _value;
  }

  bool _showSearch = true;
  bool get showSearch => _showSearch;
  set showSearch(bool _value) {
    _showSearch = _value;
  }

  final _noticiasManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> noticias({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _noticiasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNoticiasCache() => _noticiasManager.clear();
  void clearNoticiasCacheKey(String? uniqueKey) =>
      _noticiasManager.clearRequest(uniqueKey);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
