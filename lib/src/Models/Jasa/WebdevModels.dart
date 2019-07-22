// To parse this JSON data, do
//
//     final webdev = webdevFromJson(jsonString);

import 'dart:convert';

Webdev webdevFromJson(String str) => Webdev.fromJson(json.decode(str));

String webdevToJson(Webdev data) => json.encode(data.toJson());

class Webdev {
    int apiStatus;
    String apiMessage;
    String apiAuthorization;
    List<Datum> listdatum;

    Webdev({
        this.apiStatus,
        this.apiMessage,
        this.apiAuthorization,
        this.listdatum,
    });

    factory Webdev.fromJson(Map<String, dynamic> json) => new Webdev(
        apiStatus: json["api_status"],
        apiMessage: json["api_message"],
        apiAuthorization: json["api_authorization"],
        listdatum: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "api_status": apiStatus,
        "api_message": apiMessage,
        "api_authorization": apiAuthorization,
        "data": new List<dynamic>.from(listdatum.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    int kategoriId;
    String nama;
    String deskripsi;
    String status;
    int biayaAwal;
    int biayaAkhir;

    Datum({
        this.id,
        this.kategoriId,
        this.nama,
        this.deskripsi,
        this.status,
        this.biayaAwal,
        this.biayaAkhir,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        kategoriId: json["kategori_id"],
        nama: json["nama"],
        deskripsi: json["deskripsi"],
        status: json["status"],
        biayaAwal: json["biaya_awal"],
        biayaAkhir: json["biaya_akhir"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "kategori_id": kategoriId,
        "nama": nama,
        "deskripsi": deskripsi,
        "status": status,
        "biaya_awal": biayaAwal,
        "biaya_akhir": biayaAkhir,
    };
}