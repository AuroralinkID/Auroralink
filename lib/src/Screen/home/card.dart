import 'package:flutter/material.dart';
import 'package:auroralink/src/Screen/IconPallete.dart';

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
            colors: [IconPallete.menuMart, IconPallete.menuCar]),
      ),
      // child: new InkWell(
      //   onTap: ontap,
      // ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        //         new InkWell(
        //   onTap: ontap != null
        //       ? () => ontap()
        //       : () {
        //           print('Not set yet');
        //         },
        // ),
        children: <Widget>[
          // new Material(
          //   child: InkWell(
          //     onTap: ontap,
          //   ),
          // ),
          Icon(ikon,size: 40,color: warna,),
          Padding(padding: EdgeInsets.all(5.0),),
          Text(title,style: TextStyle(color: warna, fontSize: 12.0),),
          // new InkWell(
          //   onTap: ontap != null
          //       ? () => ontap()
          //       : () {
          //           print('Not set yet');
          //         },
          // ),
        ],
      ),
    );
  }
}
