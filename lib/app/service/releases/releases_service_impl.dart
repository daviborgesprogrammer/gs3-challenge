import 'dart:developer';

import '../../core/restClient/rest_client.dart';
import '../../models/releases.dart';
import './releases_service.dart';

class ReleasesServiceImpl implements ReleasesService {
  @override
  Future<List<Release>> getByAccount(int id) async {
    try {
      final data = await LocalClient.i.getByProperty('releases');
      return (data)
          .map((item) => Release.fromJson(item))
          .where((release) => release.accountId == id)
          .toList();
    } catch (e) {
      log('Erro ao buscar dados: $e');
      return [];
    }
  }
}
