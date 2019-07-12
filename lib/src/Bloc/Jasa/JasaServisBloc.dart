import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:auroralink/src/Models/Jasa/ServisModels.dart';


class JasaServisBloc{
  final _repository = Repository();
  final _servislist = PublishSubject<Servis>();
  Observable<Servis> get servisall => _servislist.stream;
  fetchAllServis() async {
    Servis servis = await _repository.fetchAllServis();
    _servislist.sink.add(servis);

  }
  dispose(){
    _servislist.close();
  }
}

final servisbloc = JasaServisBloc();
