import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:auroralink/produk/daftar_produk.dart';
import 'dart:convert';

class RestProduk {
  static const String url = "https://jsonplaceholder.typicode.com/photos";

  static Future<List<DaftarProduk>> getProduk() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<DaftarProduk> list = parseProduk(response.body);
        return list;
      } else {
        throw Exception("Ups.. Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

List<DaftarProduk> parseProduk(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<DaftarProduk>((json) => DaftarProduk.fromJson(json)).toList();
}
