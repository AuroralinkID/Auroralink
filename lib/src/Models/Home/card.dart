import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({
    this.title,
    this.ikon,
    this.warna,
    this.ontap,
  });
  final String title;
  final IconData ikon;
  final Color warna;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(22.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlue]),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Icon(
            ikon,
            color: warna,
            size: 40.0,
          ),
          new Padding(
            padding: EdgeInsets.all(5.0),
          ),
          new Text(
            title,
            style: TextStyle(color: warna, fontSize: 12.0),
          ),
          // new GestureDetector(
          //   onTap: ontap,
          // )
        ],
      ),
    );
  }
}
