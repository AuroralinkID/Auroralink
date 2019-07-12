import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:auroralink/src/Models/Jasa/SupportModel.dart';

class SupportAPI{
  Client client = Client();
  final _url = "https://auroralink.id/api/gsupport";
  Future<Support> ambildata() async{
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(supportFromJson, response.body);
    } else {
      throw Exception("Gagal memuat data");
    }
  }
}