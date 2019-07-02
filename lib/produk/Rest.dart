import 'package:http/http.dart' as http;
import 'package:auroralink/produk/daftar_produk.dart';
import 'dart:convert';

// class EventResponse {
//   String error;
//   int status;
//   String deliveryCharges;
//   String imageBaseUrl;
//   String imageLogoUrl;
//   List<Event> eventList;

//   EventResponse(
//       {this.error,
//       this.status,
//       this.deliveryCharges,
//       this.imageBaseUrl,
//       this.imageLogoUrl,
//       this.eventList});




class RestProduk {
  static const String url = "https://jsonplaceholder.typicode.com/photos";
// String url='http://xxxxxxx-oceanapparel.tk/api/userapp/event/lists';

// var headers = new Map<String, String>(); //here i defined Map type
// headers['Auth-Key'] = 'OCDOC@2018';
// headers['End-Client'] = 'OCDOC';
// var body = new Map<String, String>(); //here i defined Map type
// headers['schedule'] = 'present';
// http.Response res = await http.post(url,headers: headers, body: body);

// print("Reposnce Event:---"+res.body);





//    Future<EventResponse> fetchEvent( ) async { // here i change Future type
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
// factory EventResponse.convertEventResponse(Map<String, dynamic> json) {
// List<dynamic> events = json['eventList'];
// List<Event> eventList = events.map((e) => Event.convertEvent(e)).toList();
// return EventResponse(
//     error: json['error'],
//     status: json['status'],
//     deliveryCharges: json['deliveryCharge'],
//     imageBaseUrl: json['image_base_url'],
//     imageLogoUrl: json['image_logo_url'],
//     eventList: eventList,
//     );
//   }
// }
List<DaftarProduk> parseProduk(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//  final parsed = json.decode(responseBody).cast<String, dynamic>();
  return parsed.map<DaftarProduk>((json) => DaftarProduk.fromJson(json)).toList();
}
