import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:auroralink/src/Models/Jasa/SysadminModels.dart';

class SysadminAPI {
  Client client = Client();
  final _url = "https://auroralink.id/api/gsysadmin";
  Future<Sysadmin> ambildata() async {
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(sysadminFromJson, response.body);
    } else {
      throw Exception("Gagal memuat data");
    }
  }
}

