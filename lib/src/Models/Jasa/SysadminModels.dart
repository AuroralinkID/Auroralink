// To parse this JSON data, do
//
//     final sysadmin = sysadminFromJson(jsonString);

import 'dart:convert';

Sysadmin sysadminFromJson(String str) => Sysadmin.fromJson(json.decode(str));

String sysadminToJson(Sysadmin data) => json.encode(data.toJson());

class Sysadmin {
    // int apiStatus;
    // String apiMessage;
    // String apiAuthorization;
    List<Datum> sysadmin;

    Sysadmin({
        // this.apiStatus,
        // this.apiMessage,
        // this.apiAuthorization,
        this.sysadmin,
    });

    factory Sysadmin.fromJson(Map<String, dynamic> json) => new Sysadmin(
        // apiStatus: json["api_status"],
        // apiMessage: json["api_message"],
        // apiAuthorization: json["api_authorization"],
        sysadmin: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        // "api_status": apiStatus,
        // "api_message": apiMessage,
        // "api_authorization": apiAuthorization,
        "data": new List<dynamic>.from(sysadmin.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String nama;
    String desk;
    int hargaAwal;
    int hargaAkhir;
    String satu;
    String dua;
    String tiga;
    String empat;
    String lima;
    String gambar;

    Datum({
        this.id,
        this.nama,
        this.desk,
        this.hargaAwal,
        this.hargaAkhir,
        this.satu,
        this.dua,
        this.tiga,
        this.empat,
        this.lima,
        this.gambar,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        nama: json["nama"],
        desk: json["desk"],
        hargaAwal: json["harga_awal"],
        hargaAkhir: json["harga_akhir"],
        satu: json["satu"],
        dua: json["dua"],
        tiga: json["tiga"],
        empat: json["empat"],
        lima: json["lima"],
        gambar: json["gambar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "desk": desk,
        "harga_awal": hargaAwal,
        "harga_akhir": hargaAkhir,
        "satu": satu,
        "dua": dua,
        "tiga": tiga,
        "empat": empat,
        "lima": lima,
        "gambar": gambar,
    };
}
