import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';

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
  set menuItems(List<String> value) {
    _menuItems = value;
  }

  void addToMenuItems(String value) {
    _menuItems.add(value);
  }

  void removeFromMenuItems(String value) {
    _menuItems.remove(value);
  }

  void removeAtIndexFromMenuItems(int index) {
    _menuItems.removeAt(index);
  }

  void updateMenuItemsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _menuItems[index] = updateFn(_menuItems[index]);
  }

  void insertAtIndexInMenuItems(int index, String value) {
    _menuItems.insert(index, value);
  }

  String _menuActiveItem = '';
  String get menuActiveItem => _menuActiveItem;
  set menuActiveItem(String value) {
    _menuActiveItem = value;
  }

  List<Color> _menuItemColors = [
    const Color(0xff01a7d9),
    const Color(0xff7b6604),
    const Color(0xfff0404d),
    const Color(0xff4d60ac),
    const Color(0xff3eae48),
    const Color(0xff14181b),
    const Color(0xfff8cd01),
    const Color(0xffff59a2)
  ];
  List<Color> get menuItemColors => _menuItemColors;
  set menuItemColors(List<Color> value) {
    _menuItemColors = value;
  }

  void addToMenuItemColors(Color value) {
    _menuItemColors.add(value);
  }

  void removeFromMenuItemColors(Color value) {
    _menuItemColors.remove(value);
  }

  void removeAtIndexFromMenuItemColors(int index) {
    _menuItemColors.removeAt(index);
  }

  void updateMenuItemColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    _menuItemColors[index] = updateFn(_menuItemColors[index]);
  }

  void insertAtIndexInMenuItemColors(int index, Color value) {
    _menuItemColors.insert(index, value);
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool value) {
    _drawer = value;
  }

  String _logo = '';
  String get logo => _logo;
  set logo(String value) {
    _logo = value;
  }

  bool _live = false;
  bool get live => _live;
  set live(bool value) {
    _live = value;
  }

  String _link = '';
  String get link => _link;
  set link(String value) {
    _link = value;
  }

  String _state = '';
  String get state => _state;
  set state(String value) {
    _state = value;
  }

  String _search = '';
  String get search => _search;
  set search(String value) {
    _search = value;
  }

  String _weatherIcon = '';
  String get weatherIcon => _weatherIcon;
  set weatherIcon(String value) {
    _weatherIcon = value;
  }

  String _temp = '';
  String get temp => _temp;
  set temp(String value) {
    _temp = value;
  }

  bool _showAds = true;
  bool get showAds => _showAds;
  set showAds(bool value) {
    _showAds = value;
  }

  bool _showSearch = true;
  bool get showSearch => _showSearch;
  set showSearch(bool value) {
    _showSearch = value;
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
