import 'package:auroralink/src/Screen/IconPallete.dart';
import 'package:auroralink/src/Screen/jasa/SupportDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
      stream: supportbloc.supportall,
      builder: (context, AsyncSnapshot<Support> snapshot) {
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
                          return SupportDetail();
                        }));
                      },
                      child: Hero(
                        tag: "ImageHero",
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              "https://auroralink.id/uploads/1/2019-06/main_device_image.png",
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.golf_course,
                                      color: IconPallete.menuBluebird,
                                    ),
                                    tooltip: "Install from XDA Labs",
                                    onPressed: () {
                                      // launch("https://labs.xda-developers.com/store/app/com.groovinchip.flutter.callmanager");
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.mode_comment,
                                      color: IconPallete.menuOther,
                                    ),
                                    tooltip: "Source Code",
                                    onPressed: () {
                                      // launch("https://github.com/GroovinChip/CallManager");
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: IconPallete.green,
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
                ],
              ),
            ),
          );
        });
  }
}