import '../../core/client/cache_client.dart';
import '../../core/client/local_client.dart';
import '../../core/constants/gs3_constants.dart';
import '../../models/account.dart';
import './account_service.dart';

class AccountServiceImpl implements AccountService {
  @override
  Future<List<Account>> getAll() async {
    List data = [];
    final cache = await CacheClient.i.getCache(Gs3Constants.accountKey);
    if (cache != null) {
      data = [...cache];
    } else {
      data = await LocalClient.i.getByProperty('accounts');
      await CacheClient.i.putCache(Gs3Constants.accountKey, data);
    }
    return List.from(data).map((a) => Account.fromJson(a)).toList();
  }
}
