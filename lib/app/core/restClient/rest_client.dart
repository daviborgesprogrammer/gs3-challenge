import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

class LocalClient {
  static LocalClient? _instance;

  LocalClient._();

  static LocalClient get i => _instance ??= LocalClient._();

  String baseUrl = 'assets/data/mock.json';

  String? _data;

  Future<String?> get data async {
    try {
      if (_data != null) return _data!;
      _data = await rootBundle.loadString(baseUrl);
      return _data!;
    } catch (e, s) {
      log('erro ao abrir arquivo', error: e, stackTrace: s);
      return null;
    }
  }

  Future<List> getByProperty(String property) async {
    final data = await LocalClient.i.data;
    if (data != null) {
      final dataDecoded = await json.decode(data);
      if (dataDecoded.containsKey(property)) {
        return dataDecoded[property];
      }
    }
    return [];
  }
}
