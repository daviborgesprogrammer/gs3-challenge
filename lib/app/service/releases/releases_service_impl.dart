import 'dart:developer';

import 'package:intl/intl.dart';

import '../../core/restClient/rest_client.dart';
import '../../models/releases.dart';
import './releases_service.dart';

class ReleasesServiceImpl implements ReleasesService {
  @override
  Future<Map<String, dynamic>> getByAccount(int id) async {
    try {
      final data = await LocalClient.i.getByProperty('releases');
      final releases = (data)
          .map((item) => Release.fromJson(item))
          .where((release) => release.accountId == id)
          .toList();
      return splitByData(releases);
    } catch (e) {
      log('Erro ao buscar dados: $e');
      return {};
    }
  }

  Future<Map<String, dynamic>> splitByData(List<Release> listRelease) async {
    final Map<String, dynamic> map = {};

    for (var release in listRelease) {
      final String dateDesc = DateFormat('dd MMM', 'pt_BR')
          .format(DateTime.parse(release.releaseDate!));
      if (map.containsKey(dateDesc)) {
        map[dateDesc]['releases'] = [...map[dateDesc]['releases'], release];
      } else {
        map[dateDesc] = {
          'label': dateDesc,
          'releases': [release],
        };
      }
    }
    return map;
  }
}
