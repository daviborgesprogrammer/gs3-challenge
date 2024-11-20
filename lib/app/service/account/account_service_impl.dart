import '../../core/client/cache_client.dart';
import '../../core/client/local_client.dart';
import '../../core/constants/gs3_constants.dart';
import '../../core/errors/exceptions.dart';
import '../../models/account.dart';
import './account_service.dart';

class AccountServiceImpl implements AccountService {
  @override
  Future<List<Account>> getAll() async {
    try {
      List data = [];
      final cache = await CacheClient.i.getCache(Gs3Constants.accountKey);
      if (cache != null) {
        data = [...cache];
      } else {
        data = await LocalClient.i.getByProperty('accounts');
        if (data.isNotEmpty) {
          await CacheClient.i.putCache(Gs3Constants.accountKey, data);
        }
      }
      return List.from(data).map((a) => Account.fromJson(a)).toList();
    } catch (e) {
      throw RepositoryException(message: 'Erro ao buscar contas');
    }
  }
}
