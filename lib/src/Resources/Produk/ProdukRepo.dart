import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Resources/Produk/ProdukAPI.dart';

class ProdukRepo{
  final produkapi = ProdukAPI();
  
  //FUTURE//
  Future<DaftarProduk> fetchAllProduk() => produkapi.ambildata();
}