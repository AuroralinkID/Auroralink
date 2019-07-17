import 'package:auroralink/src/Screen/property/IconPallete.dart';
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
  final GestureTapCallback ontap;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [IconPallete.menuCar, IconPallete.menuCar]),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Material(
            elevation: 14.0,
            borderRadius: BorderRadius.circular(14.0),
            shadowColor: Color(0x802196F3),
            color: warna,
            child: InkWell(
              onTap: ontap != null
                  ? () => ontap()
                  : () {
                      print('Not set yet');
                    },
              child: Column(
                children: <Widget>[
                  Icon(
                    ikon,
                    size: 40,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:5.0),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
