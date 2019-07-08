import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';

class WebdevBloc{
  final _repository = Repository();
  final _webdevlist = PublishSubject<List<Webdev>>();
  Observable<List<Webdev>> get webDevall => _webdevlist.stream;
  fetchAllWebdev() async {
    List<Webdev> webdev = await _repository.fetchAllWebdev();
    _webdevlist.sink.add(webdev);
  }
  dispose(){
    _webdevlist.close();
  }
}

final webdevbloc = WebdevBloc();