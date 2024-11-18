import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app/gs3_app.dart';
import 'app/service/account/account_service.dart';
import 'app/service/favorite/favorite_service.dart';
import 'app/service/releases/releases_service.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('pt_BR', null);
  await setup();
  runApp(const Gs3App());
}

Future<void> setup() async {
  GetIt.I.registerLazySingleton(() => AccountService());
  GetIt.I.registerLazySingleton(() => FavoriteService());
  GetIt.I.registerLazySingleton(() => ReleasesService());
}
