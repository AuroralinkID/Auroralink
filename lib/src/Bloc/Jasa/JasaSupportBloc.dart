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

