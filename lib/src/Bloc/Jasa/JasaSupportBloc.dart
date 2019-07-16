import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:auroralink/src/Models/Jasa/SupportModel.dart';

class JasaSupportBloc {
  final _repository = Repository();
  final _supportlist = PublishSubject<Support>();
  Observable<Support> get supportall => _supportlist.stream;
  fetchAllSupport() async {
    Support support = await _repository.fetchAllSupport();
    _supportlist.sink.add(support);
  }

  dispose() {
    _supportlist.close();
  }
}

final supportbloc = JasaSupportBloc();

class Jasac {
  int id;
  int jkategoriId;
  String nama;
  String deskripsi;
  String fitur;
  String fitur1;
  String fitur2;
  String fitur3;
  int biaya;
  String gambar;
  String status;
  Jasac(
      {this.id,
      this.nama,
      this.deskripsi,
      this.fitur,
      this.fitur1,
      this.fitur2,
      this.fitur3,
      this.biaya,
      this.gambar,
      this.status});

  factory Jasac.fromJson(Map<String, dynamic> json) {
    return Jasac(
      id: json['id'] as int,
      nama: json['nama'] as String,
      deskripsi: json['deskripsi'] as String,
      fitur: json['fitur'] as String,
      fitur1: json['fitur1'] as String,
      fitur2: json['fitur2'] as String,
      fitur3: json['fitur3'] as String,
      biaya: json['biaya'] as int,
      gambar: json['gambar'] as String,
      status: json['status'] as String,
    );
  }
}
