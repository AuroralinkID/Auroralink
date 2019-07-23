import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Laptop extends StatefulWidget {
  @override
  _LaptopState createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
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
              return listlaptop1(snapshot);
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
              return listlaptop2(snapshot);
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
              return listlaptop3(snapshot);
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

Widget listlaptop1(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Laptop Bekas Terbaru",
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
                                //     // color: Color(0xffeeeeee),
                                //     blurRadius: 1.0,
                                //     offset: new Offset(1.0, 1.0),
                                //   ),
                                // ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      "https://www.jakartanotebook.com/images/products/34/1020/40849/2/279/hard-crystal-matte-frosted-case-for-macbook-air-13-inch-a1932-black-1.jpg",
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

Widget listlaptop2(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Laptop Bekas Termurah",
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
                                      "https://i1.wp.com/www.amd-id.com/wp-content/uploads/2014/11/lenovo-laptop-essential-g40-main.png",
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

Widget listlaptop3(AsyncSnapshot<DaftarProduk> snapshot) {
  return Container(
      height: 200.0,
      // decoration: new BoxDecoration(boxShadow: [
      //   new BoxShadow(
      //     color: Color(0xffeeeeee),
      //     blurRadius: 1.0,
      //     offset: new Offset(1.0, 1.0),
      //   ),
      // ]),
      child: Card(
          child: InkWell(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "Laptop Bekas Terlaris",
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
                                      "https://meteran.net/wp-content/uploads/2018/09/2-HP-14-bw005AU-samping.png",
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
