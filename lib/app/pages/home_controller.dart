import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/account.dart';
import '../service/account/account_service.dart';
import '../service/favorite/favorite_service.dart';
import '../service/releases/releases_service.dart';

enum HomeState {
  initial,
  loading,
  loaded,
  error,
}

enum AccountState {
  initial,
  loading,
  loaded,
  error,
}

class HomeController {
  final _accountService = GetIt.I<AccountService>();
  final _favoriteService = GetIt.I<FavoriteService>();
  final _releaseService = GetIt.I<ReleasesService>();

  ValueNotifier<HomeState> state = ValueNotifier(HomeState.initial);
  ValueNotifier<AccountState> stateAccount =
      ValueNotifier(AccountState.initial);

  ValueNotifier<List<Account>> accountList = ValueNotifier<List<Account>>([]);
  ValueNotifier<List<int>> favoriteList = ValueNotifier<List<int>>([]);
  ValueNotifier<Map<String, dynamic>> releaseList =
      ValueNotifier<Map<String, dynamic>>({});

  Future<void> fetchData() async {
    await fetchAccounts();
    if (accountList.value.isNotEmpty) {
      stateAccount.value = AccountState.loading;
      final Account(:id) = accountList.value.first;
      await fetchFavorite(id!);
      await fetchReleases(id);
      stateAccount.value = AccountState.loaded;
    }
  }

  Future<void> fetchAccounts() async {
    state.value = HomeState.loading;
    accountList.value = await _accountService.getAll();
    await Future.delayed(const Duration(milliseconds: 500));
    state.value = HomeState.loaded;
  }

  Future<void> fetchReleases(int id) async {
    releaseList.value = await _releaseService.getByAccount(id);
  }

  Future<void> fetchFavorite(int id) async {
    favoriteList.value = await _favoriteService.getByAccount(id);
  }

  Future<void> changeAccount(int id) async {
    stateAccount.value = AccountState.loading;
    await fetchFavorite(id);
    await fetchReleases(id);
    await Future.delayed(const Duration(milliseconds: 500));
    stateAccount.value = AccountState.loaded;
  }
}
