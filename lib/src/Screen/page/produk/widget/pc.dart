import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/pcList.dart';
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
