import 'package:auroralink/src/Screen/page/produk/detailWidget/body.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/footer.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/header.dart';
import 'package:auroralink/src/Screen/page/produk/listWidget/softwareList.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  final Software soft;
  DetailPage({Key key, @required this.soft}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: new BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
}

Container _getToolbar(BuildContext context) {
  return new Container(
    margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    child: new BackButton(
      color: IconPallete.menuCar,
    ),
  );
}

Widget _getContent() {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
         Header(),
          new JudulProduk(),
          divider,
          new Mfooter(),
        ],
      ),
    );
}
