import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension FormatterDouble on double {
  String get currencyPTBR {
    return NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
    ).format(this);
  }
}

extension FormatterString on String {
  Color get hexToColor {
    return Color(int.parse('FF$this', radix: 16));
  }
}
