// To parse this JSON data, do
//
//     final webdev = webdevFromJson(jsonString);

import 'dart:convert';

List<Webdev> webdevFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Webdev>.from(jsonData.map((x) => Webdev.fromJson(x)));
}

// Webdev webdevFromJson(String str) => Webdev.fromJson(json.decode(str));

//  String webdevToJson(Webdev data) => json.encode(data.toJson());
String webdevToJson(List<Webdev> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Webdev {
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

    Webdev({
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

    factory Webdev.fromJson(Map<String, dynamic> json) => new Webdev(
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
