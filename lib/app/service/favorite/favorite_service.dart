import 'favorite_service_impl.dart';

abstract interface class FavoriteService {
  Future<List<int>> getByAccount(int id);

  factory FavoriteService() => FavoriteServiceImpl();
}
