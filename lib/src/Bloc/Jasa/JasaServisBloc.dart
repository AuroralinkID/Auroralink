import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:auroralink/src/Models/Jasa/ServisModels.dart';


class JasaServisBloc{
  final _repository = Repository();
  final _servislist = PublishSubject<Servis>();
  Observable<Servis> get servisall => _servislist.stream;
  fetchAllServis() async {
    if(_isDisposed){
      return;
    }
    Servis servis = await _repository.fetchAllServis();
    _servislist.sink.add(servis);

  }
  bool _isDisposed = false;
  dispose(){
    _servislist.close();
  _isDisposed = true;
  }
}

final servisbloc = JasaServisBloc();
