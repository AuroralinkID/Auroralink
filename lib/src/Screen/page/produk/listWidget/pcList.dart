import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class PcRakitan extends StatefulWidget {
  @override
  _PcRakitanState createState() => _PcRakitanState();
}

class _PcRakitanState extends State<PcRakitan> {
@override
  void initState() {
    produkbloc.fetchAllProduk();
    super.initState();
  }

  // @override
  // void dispose() {
  //   webdevbloc.dispose();
  //   super.dispose();
  // }
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
        StreamBuilder(
          stream: produkbloc.semuaproduk,
          builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            if (snapshot.hasData) {
              return listpaket1(snapshot);
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center();
          },
        ),
        StreamBuilder(
          stream: produkbloc.semuaproduk,
          builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            if (snapshot.hasData) {
              return listpaket2(snapshot);
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center(child: circularProggress());
          },
        ),
        StreamBuilder(
          stream: produkbloc.semuaproduk,
          builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            if (snapshot.hasData) {
              return listpaket3(snapshot);
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center();
          },
        ),
      ],
    )));
  }

  
}


Widget listpaket1(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Paket Standart",
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
                                // decoration: new BoxDecoration(boxShadow: [
                                //   new BoxShadow(
                                //     color: Color(0xffeeeeee),
                                //     blurRadius: 1.0,
                                //     offset: new Offset(1.0, 1.0),
                                //   ),
                                // ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://static.acer.com/up/Resource/Acer/Desktop/Aspire%20T/Photogallery/20160613/TC-780_photo_gallery_03.png",
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

Widget listpaket2(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Paket Office",
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
                                // decoration: new BoxDecoration(boxShadow: [
                                //   new BoxShadow(
                                //     color: Color(0xffeeeeee),
                                //     blurRadius: 1.0,
                                //     offset: new Offset(1.0, 1.0),
                                //   ),
                                // ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://images-na.ssl-images-amazon.com/images/I/412HTdhgJsL.jpg",
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

Widget listpaket3(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Paket Gaming",
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
                                // decoration: new BoxDecoration(boxShadow: [
                                //   new BoxShadow(
                                //     color: Color(0xffeeeeee),
                                //     blurRadius: 1.0,
                                //     offset: new Offset(1.0, 1.0),
                                //   ),
                                // ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://www.xoticpc.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/g/8/g8-raptor_2.png",
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
