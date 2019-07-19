import 'package:auroralink/src/Bloc/Produk/DaftarProdukBloc.dart';
import 'package:flutter/material.dart';
class ProdukDetail extends StatefulWidget {
  ProdukDetail({@required this.detProd});
  final DaftarProduk detProd;

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
        ],
      ),
    );
  }
}

// class SectionBody extends StatelessWidget {
//   SectionBody({@required this.detProd});
//   final DaftarProduk detProd;
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//         child: new Container(
//       width: 60.0,
//       height: 60.0,
//       decoration: new BoxDecoration(
//           gradient: btnGradient,
//           shape: BoxShape.circle,
//           boxShadow: <BoxShadow>[
//             new BoxShadow(
//                 blurRadius: 10.0,
//                 color: Colors.black12,
//                 offset: new Offset(0.0, 10.0))
//           ]),
//     ));
//   }
// }

// class SectionNama extends StatelessWidget {
//   SectionNama({@required this.detProd});
//   final DaftarProduk detProd;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: new EdgeInsets.all(5.0),
//       child: new Row(
//         children: <Widget>[
//           new Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               new Text("Ini Nama Produk", style: TextStyle(fontSize: 20.0)),
//               new Text(detProd.title, style: TextStyle(fontSize: 10.0)),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class SectionIcon extends StatelessWidget {
//   SectionIcon({@required this.detProd});
//   final DaftarProduk detProd;
//   @override
//   Widget build(BuildContext context) {
//     return Row();
//   }
// }

// class SectionDeskripsi extends StatelessWidget {
//   SectionDeskripsi({@required this.detProd});
//   final DaftarProduk detProd;
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
