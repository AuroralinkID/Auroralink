
import 'package:flutter/material.dart';

class JudulProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 25.0, bottom: 12.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text("Judul Produk", style: TextStyle(fontSize: 20.0),)
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
    );
  }
}

var divider = new Divider();
