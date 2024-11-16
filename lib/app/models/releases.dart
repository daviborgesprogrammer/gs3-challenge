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
}
