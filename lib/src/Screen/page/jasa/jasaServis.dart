
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auroralink/src/Models/Jasa/ServisModels.dart';
import 'package:auroralink/src/Bloc/Jasa/JasaServisBloc.dart';

class JasaServis extends StatefulWidget {
  @override
  _JasaServisState createState() => _JasaServisState();
}

class _JasaServisState extends State<JasaServis> {
  @override
  void initState() {
    servisbloc.fetchAllServis();
    super.initState();
  }

  // @override
  // void dispose() {
  //   servisbloc.dispose();
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
      stream: servisbloc.servisall,
      builder: (context, AsyncSnapshot<Servis> snapshot) {
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

  Widget builtlist(AsyncSnapshot<Servis> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.servis.length,
        itemBuilder: (buildcontext, int index) {
          return Card(
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 12.0, top: 16.0),
                  child: Column(children: <Widget>[
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
                                snapshot.data.servis[index].namaServis,
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
                            snapshot.data.servis[index].deskServis,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton.icon(
                            color: IconPallete.grey200,
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
                            color: IconPallete.grey,
                            icon: Icon(
                              Icons.pin_drop,
                              color: IconPallete.green,
                            ),
                            label: Text("Pickup Servis"),
                            onPressed: () {
                              // launch("https://pub.dartlang.org/packages/groovin_widgets");
                            },
                          ),
                        ],
                      ),
                    ),
                  ])));
        });
  }
}
// class ServisDetail extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
