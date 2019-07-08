import 'package:flutter/material.dart';

class ServisDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton
        (
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text('Shop Items (3)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        // actions: <Widget>
        // [
        //   Container
        //   (
        //     margin: EdgeInsets.only(right: 8.0),
        //     child: Row
        //     (
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: <Widget>
        //       [
        //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
        //         Icon(Icons.arrow_drop_down, color: Colors.black54)
        //       ],
        //     ),
        //   )
        // ],
      ),
      body: ListView
      (
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          Container
          (
            margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
            child: Material
            (
              elevation: 8.0,
              color: Colors.black,
              borderRadius: BorderRadius.circular(32.0),
              child: InkWell
              (
                onTap: () {},
                child: Padding
                (
                  padding: EdgeInsets.all(12.0),
                  child: Row
                  (
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Icon(Icons.add, color: Colors.white),
                      Padding(padding: EdgeInsets.only(right: 16.0)),
                      Text('ADD A ITEM', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ),
        ],
      )
    );
  }
}
