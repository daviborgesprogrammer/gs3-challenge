import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF346CBD);

  Color get divider => const Color(0XFFE5E5E5);

  Color get bgPrimary => const Color(0XFF3C6AB2);
  Color get bgSecondary => Colors.white;
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
