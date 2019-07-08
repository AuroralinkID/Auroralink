import 'package:auroralink/src/Bloc/Produk/DaftarProdukBloc.dart';
import 'package:flutter/material.dart';

class MHeader extends StatelessWidget {
  MHeader({@required this.detProd});
  final DaftarProduk detProd;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(5.0),
      child: new Card(
        child: Hero(
          tag: "image${detProd.id}",
          child: new Material(
            child: new InkWell(
                child: new Image.network(
              detProd.thumbnailUrl,
              fit: BoxFit.cover,
            )),
          ),
        ),
      ),
    );
  }
}
