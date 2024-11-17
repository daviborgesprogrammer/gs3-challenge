import 'package:intl/intl.dart';

import '../core/constants/gs3_constants.dart';

class Release {
  int? id;
  int? accountId;
  String? releaseDate;
  String? desc;
  double? amount;
  int? installment;
  int? type;

  Release({
    this.id,
    this.accountId,
    this.releaseDate,
    this.desc,
    this.amount,
    this.installment,
    this.type,
  });

  Release.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountId = json['accountId'];
    releaseDate = json['releaseDate'];
    desc = json['desc'];
    amount = json['amount'];
    installment = json['installment'];
    type = json['type'];
  }

  String get dateTimeRelease {
    final DateTime dateTime = DateTime.parse(releaseDate!);
    return DateFormat("dd/MM 'às' HH:mm").format(dateTime);
  }

  String get imageDesc {
    return switch (type) {
      1 => ImageConst.mobileIcon,
      2 => ImageConst.carIcon,
      3 => ImageConst.cartIcon,
      _ => ImageConst.emptyIcon,
    };
  }
}
