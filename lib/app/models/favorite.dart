class Favorite {
  int? accountId;
  List<int>? favoriteList;

  Favorite({this.accountId, this.favoriteList});

  Favorite.fromJson(Map<String, dynamic> json) {
    accountId = json['accountId'];
    favoriteList = json['favoriteList'].cast<int>();
  }
}
