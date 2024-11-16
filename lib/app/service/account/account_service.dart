import '../../models/account.dart';
import 'account_service_impl.dart';

abstract interface class AccountService {
  Future<List<Account>> getAll();

  factory AccountService() => AccountServiceImpl();
}
