import '../../core/restClient/rest_client.dart';
import '../../models/favorite.dart';
import './favorite_service.dart';

class FavoriteServiceImpl implements FavoriteService {
  @override
  Future<List<int>> getByAccount(int id) async {
    final data = await LocalClient.i.getByProperty('favorites');
    final List<Favorite> favorites = (data)
        .map((item) => Favorite.fromJson(item))
        .where((fav) => fav.accountId == id)
        .toList();
    return favorites.first.favoriteList ?? [];
  }
}
