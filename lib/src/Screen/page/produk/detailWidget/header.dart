import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(5.0),
        child: new Card(
          child: SizedBox(
            height: 200.0,
            width: 400.0,
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  Hero(
                    tag: "gambar",
                    child: Image.network(
                      "https://auroralink.id/uploads/1/2019-06/main_device_image.png",
                      height: 100,
                      width: 200,
                    ),
                  ),
                ])),
          ),
        ));
  }
}

