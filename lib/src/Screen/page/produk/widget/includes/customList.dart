import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "CustomApp",
                style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 3.0),
              child: Text(
                "Pengembangan aplikasi yang sudah jadi",
                style: TextStyle(color: Color(0xff616161), fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                FontAwesomeIcons.cubes,
                color: IconPallete.menuRide,
              ),
            )
          ],
        )),
      ),
    );
  }
}

class CustomScroll extends StatefulWidget {
  @override
  _CustomScrollState createState() => _CustomScrollState();
}

class _CustomScrollState extends State<CustomScroll> {
  @override
  Widget build(BuildContext context) {
return Container(
      height: 300.0,
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
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            //   child: Text(
            //     "Aplikasi Berbasis Mobile",
            //     style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0, top: 3.0),
            //   child: Text(
            //     "Aplikasi platform IOS & Android",
            //     style: TextStyle(color: Color(0xff616161), fontSize: 12.0),
            //   ),
            // ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: new BoxDecoration(boxShadow: [
                        new BoxShadow(
                          color: Color(0xffeeeeee),
                          blurRadius: 1.0,
                          offset: new Offset(1.0, 1.0),
                        ),
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 300.0,
                            height: 250.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.0),
                          ),
                          Text(
                            "Nama Aplikasi",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: new BoxDecoration(boxShadow: [
                        new BoxShadow(
                          color: Color(0xffeeeeee),
                          blurRadius: 1.0,
                          offset: new Offset(1.0, 1.0),
                        ),
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 300.0,
                            height: 250.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.0),
                          ),
                          Text(
                            "Nama Aplikasi",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: new BoxDecoration(boxShadow: [
                        new BoxShadow(
                          color: Color(0xffeeeeee),
                          blurRadius: 1.0,
                          offset: new Offset(1.0, 1.0),
                        ),
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 300.0,
                            height: 250.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.0),
                          ),
                          Text(
                            "Nama Aplikasi",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}