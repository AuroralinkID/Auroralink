class DaftarProduk {
  int id;
  String title;
  String url;
  String thumbnailUrl;
  DaftarProduk({this.id, this.title, this.url, this.thumbnailUrl});

  factory DaftarProduk.fromJson(Map<String, dynamic> json) {
    return DaftarProduk(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
