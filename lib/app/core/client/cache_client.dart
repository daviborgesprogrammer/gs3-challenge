import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../constants/gs3_constants.dart';

class CacheClient {
  static CacheClient? _instance;

  CacheClient._();

  static CacheClient get i => _instance ??= CacheClient._();

  SharedPreferencesWithCache? _cache;

  Future<SharedPreferencesWithCache?> get cache async {
    if (_cache != null) return _cache!;
    // _cache = await SharedPreferences.getInstance();
    _cache = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: {
          Gs3Constants.accountKey,
          Gs3Constants.favoriteKey,
          Gs3Constants.releasesKey,
        },
      ),
    );
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
