import 'package:flutter/material.dart';
import 'package:auroralink/produk/daftar_produk.dart';
import 'package:auroralink/produk/produkCell.dart';
import 'package:auroralink/produk/Rest.dart';
import 'package:auroralink/produk/detail.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  girdview(AsyncSnapshot<List<DaftarProduk>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map((produk) {
          return GestureDetector(
            child: GridTile(
              child: ProdukCell(produk),
            ),
            onTap: () {
              goDetailPage(context, produk);
            },
          );
        }).toList(),
      ),
    );
  }

goDetailPage(BuildContext context, DaftarProduk produk){
Navigator.push(context, MaterialPageRoute(fullscreenDialog: true, builder: (BuildContext context)=>ProdukDetail(detProd: produk,)));
}

  circularProggress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produk"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: FutureBuilder<List<DaftarProduk>>(
              future: RestProduk.getProduk(),
              builder: (context, snapshot) {
                //
                if (snapshot.hasError) {
                  return Text("Ups.. ${snapshot.error}");
                }
                //
                if (snapshot.hasData) {
                  return girdview(snapshot);
                  //girdView
                }
                return circularProggress();
              },
            ),
          )
        ],
      ),
    );
  }
}
