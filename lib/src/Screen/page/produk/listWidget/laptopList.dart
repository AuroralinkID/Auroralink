import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/laptopDetail.dart';
import 'package:auroralink/src/Screen/property/indicator.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: produkbloc.semuaproduk,
          builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            if (snapshot.hasData) {
              return _laptoplist(snapshot);
            } else if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
              );
            }
            return Center(
              child: Indicator(),
            );
          }),
    );
  }
}

Widget _laptoplist(AsyncSnapshot<DaftarProduk> snapshot) {
  return GridView.builder(
      itemCount: snapshot.data.produk.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                                  builder: (context) => DetailLaptop(
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
