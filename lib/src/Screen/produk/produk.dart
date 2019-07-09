import 'package:auroralink/src/Bloc/Produk/DaftarProdukBloc.dart';
import 'package:auroralink/src/Resources/Produk/ProdukAPI.dart';
import 'package:auroralink/src/Screen/produk/detail.dart';
import 'package:auroralink/src/Screen/produk/produkCell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  girdview(AsyncSnapshot<List<DaftarProduk>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
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

  goDetailPage(BuildContext context, DaftarProduk produk) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => ProdukDetail(
                  detProd: produk,
                )));
  }

  circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Cari Produk",
          style: TextStyle(fontSize: 17.0),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              //    showSearchPage(context, _searchDelegate);
            },
          )
        ],
      ),
      body: Container(
        child: Column(
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
                    return Text("Ups... ${snapshot.error}");
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
      ),
    );
  }
}
