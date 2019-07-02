import 'package:flutter/material.dart';
import 'package:auroralink/produk/daftar_produk.dart';

class CardBody extends StatelessWidget {
  CardBody({@required this.detProd});
  final DaftarProduk detProd;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Image.network(
              detProd.thumbnailUrl,
              fit: BoxFit.cover,
    ));
  }
}