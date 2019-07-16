import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auroralink/src/Screen/IconPallete.dart';
import 'package:auroralink/src/Screen/jasa/jasaSysadmin.dart';

class SysDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).canvasColor,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Support",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(5.0),
              child: Hero(
                tag: "nama",
                child: new Material(
                  child: new InkWell(
                      child: new Image.network(
                    "https://auroralink.id/uploads/1/2019-06/main_device_image.png",
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.supervised_user_circle,
                                color: IconPallete.menuRide,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text("Judul"),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 12.0, right: 12.0),
                        child: Wrap(
                          children: <Widget>[
                            Text(
                              "Call Manager is an organizer for phone calls you need to make in the future, Call Manager is an organizer for phone calls you need to make in the future,Call Manager is an organizer for phone calls you need to make in the future,Call Manager is an organizer for phone calls you need to make in the future",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Theme.of(context).platform == TargetPlatform.android
                                ? IconButton(
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.green,
                                    ),
                                    tooltip: "Install from Google Play",
                                    onPressed: () {
                                      // launch(
                                      //     "https://play.google.com/store/apps/details?id=com.groovinchip.flutter.callmanager");
                                    },
                                  )
                                : Builder(
                                    builder: (BuildContext context) {
                                      return IconButton(
                                        icon: Icon(Icons.ac_unit),
                                        onPressed: () {
                                          Scaffold.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Row(
                                              children: <Widget>[
                                                Icon(Icons.info_outline),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Text(
                                                      "Not avaialble on iOS yet"),
                                                ),
                                              ],
                                            ),
                                            duration: Duration(seconds: 2),
                                          ));
                                        },
                                      );
                                    },
                                  ),
                            IconButton(
                              icon: Icon(
                                Icons.access_alarm,
                                color: Colors.orange,
                              ),
                              tooltip: "Install from XDA Labs",
                              onPressed: () {
                                // launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.golf_course,
                                color: Colors.black,
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          print('Print ');
                        },
                        textColor: Colors.white,
                        child: Center(
                          child: Text('Floating button'),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      )
                    ],
                  ),
                ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //   child: Card(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         children: <Widget>[
            //           Padding(
            //             padding: const EdgeInsets.only(left: 12.0),
            //             child: Row(
            //               children: <Widget>[
            //                 Image.asset(
            //                   "assets/img/ico.png",
            //                   height: 25.0,
            //                   width: 25.0,
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 12.0),
            //                   child: Text("Flutter Community Challenges"),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(
            //                 top: 16.0, left: 12.0, right: 12.0),
            //             child: Wrap(
            //               children: <Widget>[
            //                 Text(
            //                   "Flutter Community Challenges a contest app where Flutter developers can suggest app ideas and compete to build the best app.",
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: <Widget>[
            //                 FlatButton.icon(
            //                   icon: Icon(Icons.place),
            //                   label: Text("View Source Code"),
            //                   onPressed: () {
            //                     // launch("https://github.com/GroovinChip/Flutter-Community-Challenges");
            //                   },
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ));

    RaisedButton createButton(Color color, String name) {
      return RaisedButton(
        color: color,
        onPressed: () {
          print('Print ' + name);
        },
        textColor: Colors.white,
        child: Center(
          child: Text('Floating button'),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      );
    }
  }
}
