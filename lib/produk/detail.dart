import 'package:flutter/material.dart';
import 'package:auroralink/produk/daftar_produk.dart';

class ProdukDetail extends StatefulWidget {
  ProdukDetail({@required this.detProd});
  final DaftarProduk detProd;

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: "image/no_image.png",
              image: widget.detProd.thumbnailUrl,
            ),
            SizedBox(
              height: 30.0,
            ),
            OutlineButton(
              child: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
