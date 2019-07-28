import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detailhardware extends StatefulWidget {
  final String nama;
  final String gambar;
  final String deskripsi;
  final String f1;
  final String f2;
  final String f3;
  final String f4;
  final String f5;
  final String f6;
  final String v1;
  Detailhardware({
    Key key,
    @required this.nama,
    this.gambar,
    this.deskripsi,
    this.f1,
    this.f2,
    this.f3,
    this.f4,
    this.f5,
    this.f6,
    this.v1,
  }) : super(key: key);
  @override
  _DetailhardwareState createState() => _DetailhardwareState();
}

class _DetailhardwareState extends State<Detailhardware>
    with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;
  @override
  void initState() {
    super.initState();

    _tabs = [
      new Tab(
        child: new Text(
          "Deskripsi Produk",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "Fitur",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "Review",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    ];
    _pages = [
      _buildTile(Text("${widget.deskripsi}")),
      _buildTile(Container(
        height: 200.0,
        decoration: new BoxDecoration(boxShadow: [
          new BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 1.0,
            offset: new Offset(1.0, 1.0),
          ),
        ]),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f1}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f2}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f3}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f4}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f5}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.check,
                    size: 15,
                    color: IconPallete.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Text(
                    "${widget.f6}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      _buildTile(Center(
        child: FlutterRatingBar(
          initialRating: 5,
          fillColor: Colors.amber,
          borderColor: Colors.amber.withAlpha(50),
          allowHalfRating: true,
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ))
    ];

    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.network(
            "${widget.gambar}",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text(
                      "${widget.nama}",
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.picture_as_pdf,
                        color: Colors.lightBlue,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.share,
                        color: Colors.green,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Icon(
                        Icons.shopping_cart,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                new TabBar(
                  isScrollable: true,
                  controller: _controller,
                  tabs: _tabs,
                  indicatorColor: IconPallete.menuBluebird,
                ),
                new Divider(
                  height: 1.0,
                ),
                new SizedBox.fromSize(
                  size: const Size.fromHeight(220.0),
                  child: new TabBarView(
                    controller: _controller,
                    children: _pages,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

Widget _buildTile(Widget child, {Function() onTap}) {
  return SingleChildScrollView(
      child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null
              ? () => onTap()
              : () {
                  print('Not set yet');
                },
          child: child));
}
