import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Screen/property/indicator.dart';
import 'package:flutter/material.dart';
import 'detailWidget/detailSoftware.dart';

class AllProdukList extends StatefulWidget {
  @override
  _AllProdukListState createState() => _AllProdukListState();
}

class _AllProdukListState extends State<AllProdukList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: Column(
                  children: <Widget>[
                    Container(
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
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10.0),
                                  child: Text(
                                    "Software / Aplikasi",
                                    style: TextStyle(
                                        color: Color(0xff616161),
                                        fontSize: 16.0),
                                  ),
                                ),
                                Expanded(
                                  child: _hardware(snapshot),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ));
              } else if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                );
              }
              return Center(
                child: Indicator(),
              );
            }),
        StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: Column(
                  children: <Widget>[
                    Container(
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
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10.0),
                                  child: Text(
                                    "Sparepart Hardware",
                                    style: TextStyle(
                                        color: Color(0xff616161),
                                        fontSize: 16.0),
                                  ),
                                ),
                                Expanded(
                                  child: _pc(snapshot),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ));
              } else if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                );
              }
              return Center();
            }),
        StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: Column(
                  children: <Widget>[
                    Container(
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
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10.0),
                                  child: Text(
                                    "Paket PC Desktop",
                                    style: TextStyle(
                                        color: Color(0xff616161),
                                        fontSize: 16.0),
                                  ),
                                ),
                                Expanded(
                                  child: _laptop(snapshot),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ));
              } else if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                );
              }
              return Center();
            }),
            StreamBuilder(
            stream: produkbloc.semuaproduk,
            builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: Column(
                  children: <Widget>[
                    Container(
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
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10.0),
                                  child: Text(
                                    "Laptop Bekas/Baru",
                                    style: TextStyle(
                                        color: Color(0xff616161),
                                        fontSize: 16.0),
                                  ),
                                ),
                                Expanded(
                                  child: _software(snapshot),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ));
              } else if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                );
              }
              return Center();
            }),
      ],
    )));
  }
}

//LIST WIDGET//
Widget _software(AsyncSnapshot<DaftarProduk> snapshot) {
  return ListView.builder(
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
                      InkWell(
                          onTap: () => Navigator.push(
                                buildcontext,
                                MaterialPageRoute(
                                  builder: (context) => DetailSoft(
                                    nama: snapshot.data.produk[index].nama,
                                    gambar: snapshot.data.produk[index].img1,
                                    deskripsi:
                                        snapshot.data.produk[index].deskripsi,
                                    f1: snapshot.data.produk[index].f1,
                                    f2: snapshot.data.produk[index].f2,
                                    f3: snapshot.data.produk[index].f3,
                                    f4: snapshot.data.produk[index].f4,
                                    f5: snapshot.data.produk[index].f5,
                                    f6: snapshot.data.produk[index].f6,
                                    v1: snapshot.data.produk[index].v1,
                                  ),
                                ),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                snapshot.data.produk[index].img1,
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
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      });
}

Widget _hardware(AsyncSnapshot<DaftarProduk> snapshot) {
  return ListView.builder(
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
                      InkWell(
                          onTap: () => Navigator.push(
                                buildcontext,
                                MaterialPageRoute(
                                  builder: (context) => DetailSoft(
                                    nama: snapshot.data.produk[index].nama,
                                    gambar: snapshot.data.produk[index].img1,
                                    deskripsi:
                                        snapshot.data.produk[index].deskripsi,
                                    f1: snapshot.data.produk[index].f1,
                                    f2: snapshot.data.produk[index].f2,
                                    f3: snapshot.data.produk[index].f3,
                                    f4: snapshot.data.produk[index].f4,
                                    f5: snapshot.data.produk[index].f5,
                                    f6: snapshot.data.produk[index].f6,
                                    v1: snapshot.data.produk[index].v1,
                                  ),
                                ),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                snapshot.data.produk[index].img1,
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
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      });
}

Widget _pc(AsyncSnapshot<DaftarProduk> snapshot) {
  return ListView.builder(
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
                      InkWell(
                          onTap: () => Navigator.push(
                                buildcontext,
                                MaterialPageRoute(
                                  builder: (context) => DetailSoft(
                                    nama: snapshot.data.produk[index].nama,
                                    gambar: snapshot.data.produk[index].img1,
                                    deskripsi:
                                        snapshot.data.produk[index].deskripsi,
                                    f1: snapshot.data.produk[index].f1,
                                    f2: snapshot.data.produk[index].f2,
                                    f3: snapshot.data.produk[index].f3,
                                    f4: snapshot.data.produk[index].f4,
                                    f5: snapshot.data.produk[index].f5,
                                    f6: snapshot.data.produk[index].f6,
                                    v1: snapshot.data.produk[index].v1,
                                  ),
                                ),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                snapshot.data.produk[index].img1,
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
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

Widget _laptop(AsyncSnapshot<DaftarProduk> snapshot) {
  return ListView.builder(
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
                      InkWell(
                          onTap: () => Navigator.push(
                                buildcontext,
                                MaterialPageRoute(
                                  builder: (context) => DetailSoft(
                                    nama: snapshot.data.produk[index].nama,
                                    gambar: snapshot.data.produk[index].img1,
                                    deskripsi:
                                        snapshot.data.produk[index].deskripsi,
                                    f1: snapshot.data.produk[index].f1,
                                    f2: snapshot.data.produk[index].f2,
                                    f3: snapshot.data.produk[index].f3,
                                    f4: snapshot.data.produk[index].f4,
                                    f5: snapshot.data.produk[index].f5,
                                    f6: snapshot.data.produk[index].f6,
                                    v1: snapshot.data.produk[index].v1,
                                  ),
                                ),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                snapshot.data.produk[index].img1,
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
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}