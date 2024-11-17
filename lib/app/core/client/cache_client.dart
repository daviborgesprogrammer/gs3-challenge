import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CacheClient {
  static CacheClient? _instance;

  CacheClient._();

  static CacheClient get i => _instance ??= CacheClient._();

  SharedPreferences? _cache;

  Future<SharedPreferences?> get cache async {
    if (_cache != null) return _cache!;
    _cache = await SharedPreferences.getInstance();
    return _cache;
  }

  Future<void> putCache(String key, List value) async {
    final prefs = await CacheClient.i.cache;
    if (prefs != null) {
      await prefs.setString(key, json.encode(value));
    }
  }

  Future<List?> getCache(String key) async {
    final prefs = await CacheClient.i.cache;
    if (prefs != null) {
      final value = prefs.getString(key);
      if (value != null) {
        return json.decode(prefs.getString(key)!);
      }
      return null;
    }
    return null;
  }
}
