import 'package:auroralink/src/Models/Jasa/ServisModels.dart';
import 'package:auroralink/src/Models/Jasa/SupportModel.dart';
import 'package:auroralink/src/Models/Jasa/SysadminModels.dart';
import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Resources/Jasa/ServisAPI.dart';
import 'package:auroralink/src/Resources/Jasa/SupportAPI.dart';
import 'package:auroralink/src/Resources/Jasa/WebDevAPI.dart';
import 'package:auroralink/src/Resources/Jasa/SysadminAPI.dart';

class Repository {
  final webdevapi = WebdevAPI();
  final servisapi = ServisAPI();
  final supportapi = SupportAPI();
  final sysadminapi = SysadminAPI();
  Future<Sysadmin> fetchAllSys() => sysadminapi.ambildata();
  Future<Support> fetchAllSupport() => supportapi.ambildata();
  Future<Webdev> fetchAllWebdev() => webdevapi.ambildata();
  Future<Servis> fetchAllServis() => servisapi.ambildata();
}
