import '../../core/client/cache_client.dart';
import '../../core/client/local_client.dart';
import '../../core/constants/gs3_constants.dart';
import '../../models/favorite.dart';
import './favorite_service.dart';

class FavoriteServiceImpl implements FavoriteService {
  @override
  Future<List<int>> getByAccount(int id) async {
    List data = [];
    final cache = await CacheClient.i.getCache(Gs3Constants.favoriteKey);
    if (cache != null) {
      data = [...cache];
    } else {
      data = await LocalClient.i.getByProperty('favorites');
      await CacheClient.i.putCache(Gs3Constants.favoriteKey, data);
    }
    final List<Favorite> favorites = (data)
        .map((item) => Favorite.fromJson(item))
        .where((fav) => fav.accountId == id)
        .toList();
    return favorites.first.favoriteList ?? [];
  }
}
