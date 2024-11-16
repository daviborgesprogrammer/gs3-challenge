import 'releases_service_impl.dart';

abstract interface class ReleasesService {
  Future<Map<String, dynamic>> getByAccount(int id);

  factory ReleasesService() => ReleasesServiceImpl();
}
