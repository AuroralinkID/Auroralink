import 'package:flutter/material.dart';

class Mfooter extends StatefulWidget {
  
  @override
  _MfooterState createState() => new _MfooterState();
}

class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
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
    _pages = [new ProductDesc(), new Specification(), new UserReview()];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.white,
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
    );
  }
}

class UserReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(14.0),
        child: new Center(
          child: new Text("Ini Parameter Review"),
        ),
      ),
    );
  }
}
class Specification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Ini Parameter Fitur"),
      ),
    );
  }
}

class ProductDesc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text("Ini Parameter Deskripsi Produk",
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
    );
  }
}