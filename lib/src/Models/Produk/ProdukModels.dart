// To parse this JSON data, do
//
//     final daftarProduk = daftarProdukFromJson(jsonString);

import 'dart:convert';

DaftarProduk daftarProdukFromJson(String str) => DaftarProduk.fromJson(json.decode(str));

String daftarProdukToJson(DaftarProduk data) => json.encode(data.toJson());

class DaftarProduk {
    int apiStatus;
    String apiMessage;
    String apiAuthorization;
    List<Datum> produk;

    DaftarProduk({
        this.apiStatus,
        this.apiMessage,
        this.apiAuthorization,
        this.produk,
    });

    factory DaftarProduk.fromJson(Map<String, dynamic> json) => new DaftarProduk(
        apiStatus: json["api_status"],
        apiMessage: json["api_message"],
        apiAuthorization: json["api_authorization"],
        produk: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "api_status": apiStatus,
        "api_message": apiMessage,
        "api_authorization": apiAuthorization,
        "data": new List<dynamic>.from(produk.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String nama;
    String img1;
    String img2;
    String img3;
    String img4;
    String img5;
    String deskripsi;
    String deadline;
    String hargap;
    String hargad;
    int kategoriId;
    int devId;
    String f1;
    String f2;
    String f3;
    String f4;
    String f5;
    String f6;
    String v1;
    String v2;
    String v3;
    String v4;
    String addto;
    String proposal;
    String demo;

    Datum({
        this.id,
        this.nama,
        this.img1,
        this.img2,
        this.img3,
        this.img4,
        this.img5,
        this.deskripsi,
        this.deadline,
        this.hargap,
        this.hargad,
        this.kategoriId,
        this.devId,
        this.f1,
        this.f2,
        this.f3,
        this.f4,
        this.f5,
        this.f6,
        this.v1,
        this.v2,
        this.v3,
        this.v4,
        this.addto,
        this.proposal,
        this.demo,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        nama: json["nama"],
        img1: json["img1"],
        img2: json["img2"],
        img3: json["img3"],
        img4: json["img4"],
        img5: json["img5"],
        deskripsi: json["deskripsi"],
        deadline: json["deadline"],
        hargap: json["hargap"],
        hargad: json["hargad"],
        kategoriId: json["kategori_id"],
        devId: json["dev_id"],
        f1: json["f1"],
        f2: json["f2"],
        f3: json["f3"],
        f4: json["f4"],
        f5: json["f5"],
        f6: json["f6"],
        v1: json["v1"],
        v2: json["v2"],
        v3: json["v3"],
        v4: json["v4"],
        addto: json["addto"],
        proposal: json["proposal"],
        demo: json["demo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "img1": img1,
        "img2": img2,
        "img3": img3,
        "img4": img4,
        "img5": img5,
        "deskripsi": deskripsi,
        "deadline": deadline,
        "hargap": hargap,
        "hargad": hargad,
        "kategori_id": kategoriId,
        "dev_id": devId,
        "f1": f1,
        "f2": f2,
        "f3": f3,
        "f4": f4,
        "f5": f5,
        "f6": f6,
        "v1": v1,
        "v2": v2,
        "v3": v3,
        "v4": v4,
        "addto": addto,
        "proposal": proposal,
        "demo": demo,
    };
}
