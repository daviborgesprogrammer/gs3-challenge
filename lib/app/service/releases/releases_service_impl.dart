import 'package:intl/intl.dart';

import '../../core/client/cache_client.dart';
import '../../core/client/local_client.dart';
import '../../core/constants/gs3_constants.dart';
import '../../models/releases.dart';
import './releases_service.dart';

class ReleasesServiceImpl implements ReleasesService {
  @override
  Future<Map<String, dynamic>> getByAccount(int id) async {
    List data = [];
    final cache = await CacheClient.i.getCache(Gs3Constants.releasesKey);
    if (cache != null) {
      data = [...cache];
    } else {
      data = await LocalClient.i.getByProperty('releases');
      await CacheClient.i.putCache(Gs3Constants.releasesKey, data);
    }
    final releases = (data)
        .map((item) => Release.fromJson(item))
        .where((release) => release.accountId == id)
        .toList();
    return splitByData(releases);
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
