import 'package:auroralink/produk/daftar_produk.dart';
import 'package:flutter/material.dart';

class ProdukCell extends StatelessWidget {
  ProdukCell(this.produk);
  @required
  final DaftarProduk produk; //Dari Class Daftar Produk

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Hero(
                  tag: "image${produk.id}",
                  child: FadeInImage.assetNetwork(
                    placeholder: "images/no_image.png",
                    image: produk.thumbnailUrl,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(produk.title,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400)),
          )
        ],
      ),
    ));
  }
}
