import 'package:auroralink/src/Bloc/Produk/ProdukBloc.dart';
import 'package:auroralink/src/Models/Produk/ProdukModels.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/detailDesktopApp.dart';
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
                                    "Aplikasi Desktop",
                                    style: TextStyle(
                                        color: Color(0xff616161),
                                        fontSize: 16.0),
                                  ),
                                ),
                                Expanded(
                                  child: aplikasidesktoplist(snapshot),
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
                child: Shimmer.fromColors(
                  baseColor: IconPallete.menuCar,
                  highlightColor: Colors.yellow,
                  child: Text(
                    'Mohon Tunggu ...',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
            // StreamBuilder(
            // stream: produkbloc.semuaproduk,
            // builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            //   if (snapshot.hasData) {
            //     return Container(
            //         child: Column(
            //       children: <Widget>[
            //         Container(
            //             height: 200.0,
            //             decoration: new BoxDecoration(boxShadow: [
            //               new BoxShadow(
            //                 color: Color(0xffeeeeee),
            //                 blurRadius: 1.0,
            //                 offset: new Offset(1.0, 1.0),
            //               ),
            //             ]),
            //             child: Card(
            //               child: InkWell(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: <Widget>[
            //                     Padding(
            //                       padding: const EdgeInsets.only(
            //                           left: 10.0, top: 10.0),
            //                       child: Text(
            //                         "WebApp",
            //                         style: TextStyle(
            //                             color: Color(0xff616161),
            //                             fontSize: 16.0),
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: webapplist(snapshot),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ))
            //       ],
            //     ));
            //   } else if (snapshot.hasError) {
            //     return Text(
            //       snapshot.error.toString(),
            //     );
            //   }
            //   return Center();
            // }),
            // StreamBuilder(
            // stream: produkbloc.semuaproduk,
            // builder: (context, AsyncSnapshot<DaftarProduk> snapshot) {
            //   if (snapshot.hasData) {
            //     return Container(
            //         child: Column(
            //       children: <Widget>[
            //         Container(
            //             height: 200.0,
            //             decoration: new BoxDecoration(boxShadow: [
            //               new BoxShadow(
            //                 color: Color(0xffeeeeee),
            //                 blurRadius: 1.0,
            //                 offset: new Offset(1.0, 1.0),
            //               ),
            //             ]),
            //             child: Card(
            //               child: InkWell(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: <Widget>[
            //                     Padding(
            //                       padding: const EdgeInsets.only(
            //                           left: 10.0, top: 10.0),
            //                       child: Text(
            //                         "MobileApp",
            //                         style: TextStyle(
            //                             color: Color(0xff616161),
            //                             fontSize: 16.0),
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: mobapplist(snapshot),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ))
            //       ],
            //     ));
            //   } else if (snapshot.hasError) {
            //     return Text(
            //       snapshot.error.toString(),
            //     );
            //   }
            //   return Center();
            // }),
      ],
    )));
  }
}

//LIST WIDGET//
Widget aplikasidesktoplist(AsyncSnapshot<DaftarProduk> snapshot) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data.produk.length,
      itemBuilder: (buildcontext, int index) {
        return Card(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Hero(
                    tag: snapshot.data.produk[index].nama,
                    transitionOnUserGestures: true,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () => Navigator.push(
                                    buildcontext,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        nama: snapshot.data.produk[index].nama,
                                        gambar:
                                            snapshot.data.produk[index].img1,
                                        deskripsi: snapshot
                                            .data.produk[index].deskripsi,
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
                  )),
            ],
          ),
        );
      });
}

// Widget webapplist(AsyncSnapshot<DaftarProduk> snapshot) {
//   return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: snapshot.data.produk.length,
//       itemBuilder: (buildcontext, int index) {
//         return Card(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Hero(
//                     tag: snapshot.data.produk[index].nama,
//                     transitionOnUserGestures: true,
//                     child: Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           InkWell(
//                               // onTap: () => Navigator.push(
//                               //       buildcontext,
//                               //       MaterialPageRoute(
//                               //         builder: (context) => DetailPage(
//                               //           nama: snapshot.data.produk[index].nama,
//                               //           gambar:
//                               //               snapshot.data.produk[index].img1,
//                               //           deskripsi: snapshot
//                               //               .data.produk[index].deskripsi,
//                               //           f1: snapshot.data.produk[index].f1,
//                               //           f2: snapshot.data.produk[index].f2,
//                               //           f3: snapshot.data.produk[index].f3,
//                               //           f4: snapshot.data.produk[index].f4,
//                               //           f5: snapshot.data.produk[index].f5,
//                               //           f6: snapshot.data.produk[index].f6,
//                               //           v1: snapshot.data.produk[index].v1,
//                               //         ),
//                               //       ),
//                               //     ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Image.network(
//                                     snapshot.data.produk[index].img1,
//                                     height: 100,
//                                     width: 200,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(2.0),
//                                   ),
//                                   Text(snapshot.data.produk[index].nama),
//                                   Padding(
//                                     padding: EdgeInsets.all(2.0),
//                                   ),
//                                 ],
//                               ))
//                         ],
//                       ),
//                     ),
//                   )),
//             ],
//           ),
//         );
//       });
// }

// Widget mobapplist(AsyncSnapshot<DaftarProduk> snapshot) {
//   return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: snapshot.data.produk.length,
//       itemBuilder: (buildcontext, int index) {
//         return Card(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Hero(
//                     tag: snapshot.data.produk[index].nama,
//                     transitionOnUserGestures: true,
//                     child: Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           InkWell(
//                               // onTap: () => Navigator.push(
//                               //       buildcontext,
//                               //       MaterialPageRoute(
//                               //         builder: (context) => DetailPage(
//                               //           nama: snapshot.data.produk[index].nama,
//                               //           gambar:
//                               //               snapshot.data.produk[index].img1,
//                               //           deskripsi: snapshot
//                               //               .data.produk[index].deskripsi,
//                               //           f1: snapshot.data.produk[index].f1,
//                               //           f2: snapshot.data.produk[index].f2,
//                               //           f3: snapshot.data.produk[index].f3,
//                               //           f4: snapshot.data.produk[index].f4,
//                               //           f5: snapshot.data.produk[index].f5,
//                               //           f6: snapshot.data.produk[index].f6,
//                               //           v1: snapshot.data.produk[index].v1,
//                               //         ),
//                               //       ),
//                               //     ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Image.network(
//                                     snapshot.data.produk[index].img1,
//                                     height: 100,
//                                     width: 200,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(2.0),
//                                   ),
//                                   Text(snapshot.data.produk[index].nama),
//                                   Padding(
//                                     padding: EdgeInsets.all(2.0),
//                                   ),
//                                 ],
//                               ))
//                         ],
//                       ),
//                     ),
//                   )),
//             ],
//           ),
//         );
//       });
// }
