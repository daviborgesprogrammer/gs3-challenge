import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/account.dart';
import '../models/releases.dart';
import '../service/account/account_service.dart';
import '../service/releases/releases_service.dart';

enum HomeState {
  initial,
  loading,
  loaded,
  error,
}

enum ReleaseState {
  initial,
  loading,
  loaded,
  error,
}

class HomeController {
  final _accountService = GetIt.I<AccountService>();
  final _releaseService = GetIt.I<ReleasesService>();

  ValueNotifier<HomeState> state = ValueNotifier(HomeState.initial);
  ValueNotifier<ReleaseState> stateRelease =
      ValueNotifier(ReleaseState.initial);

  ValueNotifier<List<Account>> accountList = ValueNotifier<List<Account>>([]);
  ValueNotifier<List<Release>> releaseList = ValueNotifier<List<Release>>([]);

  Future<void> fetchData() async {
    await fetchAccounts();
    if (accountList.value.isNotEmpty) {
      changeAccount(accountList.value.first.id!);
    }
  }

  Future<void> fetchAccounts() async {
    state.value = HomeState.loading;
    accountList.value = await _accountService.getAll();
    state.value = HomeState.loaded;
  }

  Future<void> changeAccount(int id) async {
    stateRelease.value = ReleaseState.loading;
    releaseList.value = await _releaseService.getByAccount(id);
    await Future.delayed(const Duration(seconds: 5));
    stateRelease.value = ReleaseState.loaded;
  }
}
