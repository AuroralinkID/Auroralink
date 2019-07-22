import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class ProdukAPI{
    Client client = Client();
  final _url = "https://auroralink.id/api/aplikasi";
  Future<DaftarProduk> ambildata() async{
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(daftarProdukFromJson, response.body);
    } else {
      throw Exception("Gagal memuat data");
    }
  }
}

