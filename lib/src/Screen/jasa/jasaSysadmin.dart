import 'package:auroralink/src/Bloc/Jasa/JasaSysadminBloc.dart';
import 'package:auroralink/src/Models/Jasa/SysadminModels.dart';
import 'package:auroralink/src/Screen/jasa/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auroralink/src/Screen/IconPallete.dart';

class JasaSysadmin extends StatefulWidget {
  @override
  _JasaSysadminState createState() => _JasaSysadminState();
}

class _JasaSysadminState extends State<JasaSysadmin> {
  @override
  void initState() {
    sysbloc.fetchAllSys();
    super.initState();
  }

  // @override
  // void dispose() {
  //   sysbloc.dispose();
  //   super.dispose();
  // }
  circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(
          color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: sysbloc.sysall,
      builder: (context, AsyncSnapshot<Sysadmin> snapshot) {
        if (snapshot.hasData) {
          return builtlist(snapshot);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(
          child: circularProggress(),
        );
      },
    ));
  }

  Widget builtlist(AsyncSnapshot<Sysadmin> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.sysadmin.length,
        itemBuilder: (buildcontext, int index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: <Widget>[
                            new Hero(
                              tag: 'imageHero',
                              child: Image.asset(
                                "assets/img/ico.png",
                                height: 25.0,
                                width: 25.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text(
                                snapshot.data.sysadmin[index].nama,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, left: 12.0, right: 12.0),
                      child: Wrap(
                        children: <Widget>[
                          Text(
                            snapshot.data.sysadmin[index].desk,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: IconPallete.menuFood,
                            ),
                            tooltip: "Install from XDA Labs",
                            onPressed: () {
                              // launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.desktop_mac,
                              color: IconPallete.menuRide,
                            ),
                            tooltip: "Source Code",
                            onPressed: () {
                              // launch("https://github.com/GroovinChip/CallManager");
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.description,
                              color: IconPallete.menuCar,
                            ),
                            tooltip: "Source Code",
                            onPressed: () {
                              // launch("https://github.com/GroovinChip/CallManager");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}

class DetailSysadm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini hero"),
      ),
      // body: Center(
      //   child: Hero(
      //     tag: 'imageHero',
      //     child: Image.asset(
      //       "assets/img/ico.png",
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
    );
  }
}
