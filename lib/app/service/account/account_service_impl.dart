import '../../core/restClient/rest_client.dart';
import '../../models/account.dart';
import './account_service.dart';

class AccountServiceImpl implements AccountService {
  @override
  Future<List<Account>> getAll() async {
    final data = await LocalClient.i.getByProperty('accounts');
    return List.from(data).map((a) => Account.fromJson(a)).toList();
  }
}
