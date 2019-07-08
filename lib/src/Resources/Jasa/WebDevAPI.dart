import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class WebdevAPI {
  Client client = Client();
  final _url = "https://auroralink.id/api/webdev";
  Future<List<Webdev>> ambilWbdevList() async{
    print('hasil');

    final response = await client.get(_url);
    if (response.statusCode == 200) {
      // List<Webdev> list = compute(webdevFromJson, response.body);
            return compute(webdevFromJson, response.body);
    } else {
      throw Exception("Gagal memuat data");
    }
  }
}