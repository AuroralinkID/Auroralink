// To parse this JSON data, do
//
//     final servis = servisFromJson(jsonString);

import 'dart:convert';

Servis servisFromJson(String str) => Servis.fromJson(json.decode(str));

String servisToJson(Servis data) => json.encode(data.toJson());

class Servis {
    // int apiStatus;
    // String apiMessage;
    // String apiAuthorization;
    List<ListServis> servis;

    Servis({
        // this.apiStatus,
        // this.apiMessage,
        // this.apiAuthorization,
        this.servis,
    });

    factory Servis.fromJson(Map<String, dynamic> json) => new Servis(
        // apiStatus: json["api_status"],
        // apiMessage: json["api_message"],
        // apiAuthorization: json["api_authorization"],
        servis: new List<ListServis>.from(json["data"].map((x) => ListServis.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        // "api_status": apiStatus,
        // "api_message": apiMessage,
        // "api_authorization": apiAuthorization,
        "data": new List<dynamic>.from(servis.map((x) => x.toJson())),
    };
}

class ListServis {
    int id;
    String namaServis;
    String deskServis;
    int hargaAwal;
    int hargaAkhir;
    String servisSatu;
    String servisDua;
    String servisTiga;
    String servisEmpat;
    String servisLima;

    ListServis({
        this.id,
        this.namaServis,
        this.deskServis,
        this.hargaAwal,
        this.hargaAkhir,
        this.servisSatu,
        this.servisDua,
        this.servisTiga,
        this.servisEmpat,
        this.servisLima,
    });

    factory ListServis.fromJson(Map<String, dynamic> json) => new ListServis(
        id: json["id"],
        namaServis: json["nama_servis"],
        deskServis: json["desk_servis"],
        hargaAwal: json["harga_awal"],
        hargaAkhir: json["harga_akhir"],
        servisSatu: json["servis_satu"],
        servisDua: json["servis_dua"],
        servisTiga: json["servis_tiga"],
        servisEmpat: json["servis_empat"],
        servisLima: json["servis_lima"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama_servis": namaServis,
        "desk_servis": deskServis,
        "harga_awal": hargaAwal,
        "harga_akhir": hargaAkhir,
        "servis_satu": servisSatu,
        "servis_dua": servisDua,
        "servis_tiga": servisTiga,
        "servis_empat": servisEmpat,
        "servis_lima": servisLima,
    };
}
