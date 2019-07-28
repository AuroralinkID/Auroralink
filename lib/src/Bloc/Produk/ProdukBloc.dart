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


// The base class for the different types of items the list can contain.
// abstract class Kategori {}

// // A ListItem that contains data to display a heading.
// class KategoriItem implements Kategori {
//   final String kategori;

//   KategoriItem(this.kategori);
// }

// A ListItem that contains data to display a message.
// class MessageItem implements Kategori {
//   final String sender;
//   final String body;

//   MessageItem(this.sender, this.body);
// }