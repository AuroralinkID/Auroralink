import 'package:auroralink/src/Resources/Jasa/Repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:auroralink/src/Models/Jasa/SysadminModels.dart';

class JasaSysadminBloc{
  final _repository = Repository();
  final _syslist = PublishSubject<Sysadmin>();
  Observable<Sysadmin> get servisall => _syslist.stream;
  fetchAllSys() async {
    Sysadmin sys = await _repository.fetchAllSys();
    _syslist.sink.add(sys);

  }
  dispose(){
    _syslist.close();
  }
}
final sysbloc = JasaSysadminBloc();