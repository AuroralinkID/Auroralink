// To parse this JSON data, do
//
//     final support = supportFromJson(jsonString);

import 'dart:convert';

Support supportFromJson(String str) => Support.fromJson(json.decode(str));

String supportToJson(Support data) => json.encode(data.toJson());

class Support {
    int apiStatus;
    String apiMessage;
    String apiAuthorization;
    List<Datum> support;

    Support({
        this.apiStatus,
        this.apiMessage,
        this.apiAuthorization,
        this.support,
    });

    factory Support.fromJson(Map<String, dynamic> json) => new Support(
        apiStatus: json["api_status"],
        apiMessage: json["api_message"],
        apiAuthorization: json["api_authorization"],
        support: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "api_status": apiStatus,
        "api_message": apiMessage,
        "api_authorization": apiAuthorization,
        "data": new List<dynamic>.from(support.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    int jkategoriId;
    String nama;
    String deskripsi;
    String fitur;
    String fitur1;
    String fitur2;
    String fitur3;
    int biaya;
    String gambar;
    String status;

    Datum({
        this.id,
        this.jkategoriId,
        this.nama,
        this.deskripsi,
        this.fitur,
        this.fitur1,
        this.fitur2,
        this.fitur3,
        this.biaya,
        this.gambar,
        this.status,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        jkategoriId: json["jkategori_id"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        fitur: json["fitur"],
        fitur1: json["fitur1"],
        fitur2: json["fitur2"],
        fitur3: json["fitur3"],
        biaya: json["biaya"],
        gambar: json["gambar"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "jkategori_id": jkategoriId,
        "nama": nama,
        "deskripsi": deskripsi,
        "fitur": fitur,
        "fitur1": fitur1,
        "fitur2": fitur2,
        "fitur3": fitur3,
        "biaya": biaya,
        "gambar": gambar,
        "status": status,
    };
}
