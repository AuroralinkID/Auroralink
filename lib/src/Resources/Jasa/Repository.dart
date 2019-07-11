import 'package:auroralink/src/Models/Jasa/ServisModels.dart';
import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Resources/Jasa/ServisAPI.dart';
import 'package:auroralink/src/Resources/Jasa/WebDevAPI.dart';

class Repository{
  final webdevapi = WebdevAPI();
  final servisapi = ServisAPI();
  Future<Webdev> fetchAllWebdev() => webdevapi.ambilWbdevList();
  Future<Servis> fetchAllServis() => servisapi.ambilServislist();
} 