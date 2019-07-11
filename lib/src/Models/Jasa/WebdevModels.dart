// To parse this JSON data, do
//
//     final webdev = webdevFromJson(jsonString);

import 'dart:convert';

Webdev webdevFromJson(String str) => Webdev.fromJson(json.decode(str));

String webdevToJson(Webdev data) => json.encode(data.toJson());

class Webdev {
  List<Datum> listdatum = [];

  Webdev({
    this.listdatum,
  });

  factory Webdev.fromJson(Map<String, dynamic> json) => new Webdev(
        listdatum:
            new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": new List<dynamic>.from(listdatum.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String judul;
  String konten;
  String tags;
  String webSatu;
  String webDua;
  String webTiga;
  String webEmpat;
  String webLima;
  String webEnam;
  int cmsUsersId;

  Datum({
    this.id,
    this.judul,
    this.konten,
    this.tags,
    this.webSatu,
    this.webDua,
    this.webTiga,
    this.webEmpat,
    this.webLima,
    this.webEnam,
    this.cmsUsersId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        judul: json["judul"],
        konten: json["konten"],
        tags: json["tags"],
        webSatu: json["web_satu"],
        webDua: json["web_dua"],
        webTiga: json["web_tiga"],
        webEmpat: json["web_empat"],
        webLima: json["web_lima"],
        webEnam: json["web_enam"],
        cmsUsersId: json["cms_users_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "konten": konten,
        "tags": tags,
        "web_satu": webSatu,
        "web_dua": webDua,
        "web_tiga": webTiga,
        "web_empat": webEmpat,
        "web_lima": webLima,
        "web_enam": webEnam,
        "cms_users_id": cmsUsersId,
      };
}
