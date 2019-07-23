import 'package:flutter/material.dart';

class Recomended extends StatefulWidget {
  @override
  _RecomendedState createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: Text(
                "Recent View",
                style: TextStyle(color: Color(0xff616161), fontSize: 16.0),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.00, bottom: 10.00, left: 8, right: 4),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 80.0,
                            height: 80.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "For you you",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "23 MB",
                            style: TextStyle(
                                color: Color(0xff5f6368), fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.00, bottom: 10.00, left: 8, right: 4),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 80.0,
                            height: 80.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "For you you",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "23 MB",
                            style: TextStyle(
                                color: Color(0xff5f6368), fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.00, bottom: 10.00, left: 8, right: 4),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 80.0,
                            height: 80.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "For you you",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "23 MB",
                            style: TextStyle(
                                color: Color(0xff5f6368), fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.00, bottom: 10.00, left: 8, right: 4),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/img/ico.png'),
                            width: 80.0,
                            height: 80.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "For you you",
                            style: TextStyle(
                              color: Color(0xff202124),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                          ),
                          Text(
                            "23 MB",
                            style: TextStyle(
                                color: Color(0xff5f6368), fontSize: 12.0),
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
