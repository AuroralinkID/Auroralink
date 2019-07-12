import 'package:auroralink/src/Models/Jasa/ServisModels.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class ServisAPI {
  Client client = Client();
  final _url = "https://auroralink.id/api/gservis";
  Future<Servis> ambildata() async{
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(servisFromJson, response.body);
    } else {
      throw Exception("Gagal memuat data");
    }
  }
}

