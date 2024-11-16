import '../../models/releases.dart';
import 'releases_service_impl.dart';

abstract interface class ReleasesService {
  Future<List<Release>> getByAccount(int id);

  factory ReleasesService() => ReleasesServiceImpl();
}
