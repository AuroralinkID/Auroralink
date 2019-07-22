import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Resources/Produk/ProdukRepo.dart';
import 'package:rxdart/rxdart.dart';

class ProdukBloc{
  final _repoProduk = ProdukRepo();
  final _produklist = PublishSubject<DaftarProduk>();
  Observable<DaftarProduk> get semuaproduk => _produklist.stream;
  fetchAllProduk() async {
    DaftarProduk produk = await _repoProduk.fetchAllProduk();
    _produklist.sink.add(produk);
  }
  dispose(){
    _produklist.close();
  }
}
final produkbloc = ProdukBloc();