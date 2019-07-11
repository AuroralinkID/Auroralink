import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';

class WebdevBloc{
  final _repository = Repository();
  final _webdevlist = PublishSubject<Webdev>();
  Observable<Webdev> get webDevall => _webdevlist.stream;
  fetchAllWebdev() async {
    if(_isDisposed){
      return;
    }
    Webdev webdev = await _repository.fetchAllWebdev();
    _webdevlist.sink.add(webdev);

  }
  bool _isDisposed = false;
  dispose(){
    _webdevlist.close();
  _isDisposed = true;
  }
}

final webdevbloc = WebdevBloc();