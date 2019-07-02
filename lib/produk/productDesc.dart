import 'package:flutter/material.dart';
import 'package:auroralink/produk/daftar_produk.dart';

class ProductDesc extends StatelessWidget {
  ProductDesc({@required this.detProd});
  final DaftarProduk detProd;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text("Ini Parameter Deskripsi Produk",
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
    );
  }
}
