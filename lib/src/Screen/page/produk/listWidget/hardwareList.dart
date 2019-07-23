import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Hardware extends StatefulWidget {
  @override
  _HardwareState createState() => _HardwareState();
}

class _HardwareState extends State<Hardware> {
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
              return baterailist(snapshot);
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
              return keyboardlist(snapshot);
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
              return hddlist(snapshot);
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

Widget baterailist(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Sparepart Baterai",
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
                                      "https://www.jakartanotebook.com/images/products/13/4/4616/2/baterai-notebook-hp-2230-2230b-2230s-cq20-series-standard-capacity-oem-black-14.JPG",
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

Widget keyboardlist(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Sparepart Keyboard",
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
                                      "https://i.ya-webdesign.com/images/laptop-keyboard-png-2.png",
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

Widget hddlist(AsyncSnapshot<DaftarProduk> snapshot) {
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
                "Sparepart Hdd",
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
                                      "https://thecomputercompany.com.au/wp-content/uploads/2018/08/wd-blue-500gb-25-notebook-hard-drive.jpg",
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
