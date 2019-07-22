import 'package:auroralink/src/Bloc/Jasa/JasaWebdevBloc.dart';
import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WebDev extends StatefulWidget {
  @override
  _WebDevState createState() => _WebDevState();
}

class _WebDevState extends State<WebDev> {
  @override
  void initState() {
    webdevbloc.fetchAllWebdev();
    super.initState();
  }

  // @override
  // void dispose() {
  //   webdevbloc.dispose();
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
      stream: webdevbloc.webDevall,
      builder: (context, AsyncSnapshot<Webdev> snapshot) {
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

  Widget builtlist(AsyncSnapshot<Webdev> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.listdatum.length,
        itemBuilder: (buildcontext, int index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                child: Column(
                  children: <Widget>[
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
                                      child: Text(
                                        snapshot.data.listdatum[index].nama,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, left: 12.0, right: 12.0),
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: Text(
                                        snapshot.data.listdatum[index].deskripsi,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    FlatButton.icon(
                                      icon: Icon(
                                        Icons.info_outline,
                                        color: IconPallete.menuTix,
                                      ),
                                      label: Text("Detail"),
                                      onPressed: () {
                                        // launch("https://pub.dartlang.org/packages/groovin_widgets");
                                      },
                                    ),
                                    FlatButton.icon(
                                      icon: Icon(Icons.assignment,
                                          color: IconPallete.green),
                                      label: Text("Proposal"),
                                      onPressed: () {
                                        // launch("https://github.com/GroovinChip/GroovinWidgets");
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
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 8.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: <Widget>[
                    //       Theme.of(context).platform == TargetPlatform.android
                    //           ? IconButton(
                    //               icon: Icon(
                    //                 Icons.call,
                    //                 color: IconPallete.green,
                    //               ),
                    //               tooltip: "Install from Google Play",
                    //               onPressed: () {
                    //                 // launch(
                    //                 //     "https://play.google.com/store/apps/details?id=com.groovinchip.flutter.callmanager");
                    //               },
                    //             )
                    //           : Builder(
                    //               builder: (BuildContext context) {
                    //                 return IconButton(
                    //                   icon: Icon(Icons.ac_unit),
                    //                   onPressed: () {
                    //                     Scaffold.of(context)
                    //                         .showSnackBar(SnackBar(
                    //                       content: Row(
                    //                         children: <Widget>[
                    //                           Icon(Icons.info_outline),
                    //                           Padding(
                    //                             padding:
                    //                                 const EdgeInsets.only(
                    //                                     left: 10.0),
                    //                             child: Text(
                    //                                 "Not avaialble on iOS yet"),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       duration: Duration(seconds: 2),
                    //                     ));
                    //                   },
                    //                 );
                    //               },
                    //             ),
                    //       IconButton(
                    //         icon: Icon(
                    //           Icons.chat,
                    //           color: Colors.orange,
                    //         ),
                    //         tooltip: "Install from XDA Labs",
                    //         onPressed: () {
                    //           // launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                    //         },
                    //       ),
                    //       IconButton(
                    //         icon: Icon(
                    //           Icons.keyboard_arrow_right,
                    //           color: Colors.black,
                    //         ),
                    //         tooltip: "Source Code",
                    //         onPressed: () {
                    //           // launch("https://github.com/GroovinChip/CallManager");
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                )),
          );
        });
  }
}

// class WebDetail extends StatefulWidget {
//   @override
//   _WebDetailState createState() => _WebDetailState();
// }

// class _WebDetailState extends State<WebDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
