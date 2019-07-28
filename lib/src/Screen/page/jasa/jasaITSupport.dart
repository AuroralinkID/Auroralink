import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:auroralink/src/Screen/property/indicator.dart';
import 'package:flutter/material.dart';
import 'package:auroralink/src/Models/Jasa/SupportModel.dart';
import 'package:auroralink/src/Bloc/Jasa/JasaSupportBloc.dart';

class ITSupport extends StatefulWidget {
  @override
  _ITSupportState createState() => _ITSupportState();
}

class _ITSupportState extends State<ITSupport> {
  @override
  void initState() {
    supportbloc.fetchAllSupport();
    super.initState();
  }

  // @override
  // void dispose() {
  //   supportbloc.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: supportbloc.supportall,
      builder: (context, AsyncSnapshot<Support> snapshot) {
        if (snapshot.hasData) {
          return builtlist(snapshot);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(
          child: Indicator(),
        );
      },
    ));
  }

  Widget builtlist(AsyncSnapshot<Support> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.support.length,
        itemBuilder: (buildcontext, int index) {
          return Card(
            borderOnForeground: true,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SupportDetail(
                            gambar: snapshot.data.support[index].gambar,
                            nama: snapshot.data.support[index].nama,
                            deskripsi: snapshot.data.support[index].deskripsi,
                          );
                        }));
                      },
                      child: Column(
                        children: <Widget>[
                          Image.network(snapshot.data.support[index].gambar),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/img/ico.png",
                                    height: 25.0,
                                    width: 25.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child:
                                        Text(snapshot.data.support[index].nama),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, left: 12.0, right: 12.0),
                              child: Wrap(
                                children: <Widget>[
                                  Text(
                                    snapshot.data.support[index].deskripsi,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.star,
                                      color: IconPallete.menuRide,
                                    ),
                                    tooltip: "Install from XDA Labs",
                                    onPressed: () {
                                      // launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.comment,
                                      color: IconPallete.menuCar,
                                    ),
                                    tooltip: "Source Code",
                                    onPressed: () {
                                      // launch("https://github.com/GroovinChip/CallManager");
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: IconPallete.menuMart,
                                    ),
                                    tooltip: "Source Code",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SupportDetail(
                                                  gambar: snapshot.data
                                                      .support[index].gambar,
                                                  nama: snapshot
                                                      .data.support[index].nama,
                                                  deskripsi: snapshot.data
                                                      .support[index].deskripsi,
                                                )),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class SupportDetail extends StatefulWidget {
  final String gambar;
  final String nama;
  final String deskripsi;
  SupportDetail({Key key, this.gambar, this.nama, this.deskripsi})
      : super(key: key);
  @override
  _SupportDetailState createState() => _SupportDetailState();
}

class _SupportDetailState extends State<SupportDetail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(title: new Text('Detail Page')),
      body: new Container(
        child: new Center(
          child: Column(
            children: <Widget>[
              // Padding(
              //   child: new Text(
              //     'SPACECRAFT DETAILS',
              //     style: new TextStyle(
              //         fontWeight: FontWeight.bold, fontSize: 20.0),
              //     textAlign: TextAlign.center,
              //   ),
              //   padding: EdgeInsets.only(bottom: 20.0),
              // ),
              Padding(
                child: Image.network("${widget.gambar}"),
                padding: EdgeInsets.all(10.0),
              ),
              Padding(
                child: new Text(
                  "${widget.nama}",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(20.0),
              ),
              Padding(
                child: new Text(
                  "${widget.deskripsi}",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
