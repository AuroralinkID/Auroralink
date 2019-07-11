import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Resources/Jasa/WebDevAPI.dart';

class Repository{
  final webdevapi = WebdevAPI();
  Future<Webdev> fetchAllWebdev() => webdevapi.ambilWbdevList();
} 