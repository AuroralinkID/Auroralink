import 'dart:convert';

import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class WebdevAPI {
  Client client = Client();
  final _url = "https://auroralink.id/api/webdev";
//   Future<List<Webdev>> ambilWbdevList() async{
//     final list = json.decode(webdevFromJson, response.body)
//     print(list);

//     final response = await client.get(_url);
//     if (response.statusCode == 200) {
//       return compute(webdevFromJson, response.body);
//     } else {
//       throw Exception("Gagal memuat data");
//     }
//   }
// }

  Future<List<Webdev>> ambilWbdevList() async {
    
    try {
      final response = await client.get(_url);
      if (response.statusCode == 200) {
        List<Webdev> list = parseData(response.body);
        return list;
      } else {
        throw Exception("Ups.. Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

List<Webdev> parseData(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed
      .map<Webdev>((json) => Webdev.fromJson(json))
      .toList();
}
