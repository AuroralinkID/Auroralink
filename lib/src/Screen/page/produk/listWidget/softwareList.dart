import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/detailProduk.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Software extends StatefulWidget {
  @override
  _SoftwareState createState() => _SoftwareState();
}

class _SoftwareState extends State<Software> {
  @override
  void initState() {
    produkbloc.fetchAllProduk();
    super.initState();
  }

  circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(
          color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailPage(
                    soft: widget,
                  ))),
          child: StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return aplikasidesktoplist(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center(
                child: Shimmer.fromColors(
                  baseColor: IconPallete.menuCar,
                  highlightColor: Colors.yellow,
                  child: Text(
                    'Loading...',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => DetailPage(
                    soft: null,
                  ))),
          child: StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return webapplist(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center();
            },
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => DetailPage(soft: null,))),
          child: StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return mobapplist(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center();
            },
          ),
        ),
      ],
    )));
  }
}

//LIST WIDGET//

Widget aplikasidesktoplist(AsyncSnapshot<DaftarProduk> snapshot) {
  return Container(
      height: 200.0,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color(0xffeeeeee),
          blurRadius: 1.0,
          offset: new Offset(1.0, 1.0),
        ),
      ]),
      child: Card(
          child: InkWell(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "Kategori Desktop",
                style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.produk.length,
                    itemBuilder: (buildcontext, int index) {
                      return Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://auroralink.id/uploads/1/2019-06/main_device_image.png",
                                      height: 100,
                                      width: 200,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    Text(snapshot.data.produk[index].nama),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ]))));
}

Widget webapplist(AsyncSnapshot<DaftarProduk> snapshot) {
  return Container(
      height: 200.0,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color(0xffeeeeee),
          blurRadius: 1.0,
          offset: new Offset(1.0, 1.0),
        ),
      ]),
      child: Card(
          child: InkWell(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "Kategori WebApp",
                style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.produk.length,
                    itemBuilder: (buildcontext, int index) {
                      return Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://auroralink.id/uploads/1/2019-06/smpn_54.png",
                                      height: 100,
                                      width: 200,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    Text(snapshot.data.produk[index].nama),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ]))));
}

Widget mobapplist(AsyncSnapshot<DaftarProduk> snapshot) {
  return Container(
      height: 200.0,
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Color(0xffeeeeee),
          blurRadius: 1.0,
          offset: new Offset(1.0, 1.0),
        ),
      ]),
      child: Card(
          child: InkWell(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "Kategori MobileApp",
                style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.produk.length,
                    itemBuilder: (buildcontext, int index) {
                      return Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://auroralink.id/uploads/1/2019-06/smpn_54.png",
                                      height: 100,
                                      width: 200,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    Text(snapshot.data.produk[index].nama),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ]))));
}
