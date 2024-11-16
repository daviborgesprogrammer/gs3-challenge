class Account {
  int? id;
  String? number;
  String? name;
  double? limit;
  int? shoppingDay;
  ColorsCard? colorsCard;

  Account({
    this.id,
    this.number,
    this.name,
    this.limit,
    this.shoppingDay,
    this.colorsCard,
  });

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    name = json['name'];
    limit = json['limit'];
    shoppingDay = json['shoppingDay'];
    colorsCard =
        json['colors'] != null ? ColorsCard.fromJson(json['colors']) : null;
  }
}

class ColorsCard {
  String? begin;
  String? end;
  String? line;

  ColorsCard({this.begin, this.end, this.line});

  ColorsCard.fromJson(Map<String, dynamic> json) {
    begin = json['begin'];
    end = json['end'];
    line = json['line'];
  }
}
