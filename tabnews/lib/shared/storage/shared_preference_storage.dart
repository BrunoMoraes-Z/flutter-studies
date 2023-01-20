import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tabnews/shared/storage/i_storage.dart';

class SharedPreferenceStorage extends ChangeNotifier implements IStorage {
  late SharedPreferences _preferences;

  SharedPreferenceStorage() {
    init();
  }

  @override
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
    notifyListeners();
  }

  @override
  Future<String> getString(String key, {dynamic defaultValue}) {
    return _preferences.getString(key) ?? defaultValue;
  }

  @override
  Future<bool> getBool(String key, {dynamic defaultValue}) {
    return _preferences.getBool(key) ?? defaultValue;
  }

  @override
  Future<int> getInt(String key, {dynamic defaultValue}) {
    return _preferences.getInt(key) ?? defaultValue;
  }

  @override
  Future<Map<String, dynamic>> getJson(
    String key, {
    dynamic defaultValue,
  }) async {
    var value = await getString(key);
    try {
      return jsonDecode(value);
    } catch (e) {
      return defaultValue;
    }
  }

  @override
  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _preferences.setInt(key, value);
  }

  @override
  Future<void> setJson(String key, Map<String, dynamic> value) async {
    await _preferences.setString(key, jsonEncode(value));
  }
}
