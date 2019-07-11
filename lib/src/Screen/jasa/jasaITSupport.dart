import 'package:flutter/material.dart';

class ITSupport extends StatefulWidget {
  @override
  _ITSupportState createState() => _ITSupportState();
}

class _ITSupportState extends State<ITSupport> {
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
      body: ListView(children: <Widget>[
        ExpansionTile(
          leading: Icon(
            Icons.code,
            color: Colors.indigoAccent,
          ),
          title: Text(
            "Apps",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
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
                              Image.asset(
                                "assets/img/ico.png",
                                height: 25.0,
                                width: 25.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Call Manager",
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
                              "Call Manager is an organizer for phone calls you need to make in the future.",
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
                              "assets/developers/groovin_chip/mysoftballteam_app_icon.png",
                              height: 25.0,
                              width: 25.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text("MySoftballTeam"),
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
                              "MySoftballTeam is a tool for softball teams to schedule their games, scores, and player stats.",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(Icons.play_arrow),
                              label: Text("View Source Code"),
                              onPressed: () {
                                // launch("https://github.com/GroovinChip/MySoftballTeam");
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
                              child: Text("Flutter Community Challenges"),
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
                              "Flutter Community Challenges a contest app where Flutter developers can suggest app ideas and compete to build the best app.",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(Icons.place),
                              label: Text("View Source Code"),
                              onPressed: () {
                                // launch("https://github.com/GroovinChip/Flutter-Community-Challenges");
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
        ExpansionTile(
          leading: Icon(
            Icons.devices,
            color: Colors.indigoAccent,
          ),
          title: Text(
            "Website Profile",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
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
                            Text(
                              "groovin_material_icons",
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                              "This package is an icon pack that includes icons from various sources.",
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
                              icon: Icon(Icons.atm),
                              label: Text("View on Pub"),
                              onPressed: () {
                                // launch("https://pub.dartlang.org/packages/groovin_material_icons");
                              },
                            ),
                            FlatButton.icon(
                              icon: Icon(Icons.border_all),
                              label: Text("Contribute"),
                              onPressed: () {
                                // launch("https://github.com/GroovinChip/groovin_material_icons");
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
                            Text(
                              "groovin_widgets",
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                "This package includes custom widgets built by me.",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: Icon(Icons.tablet_mac),
                              label: Text("View on Pub"),
                              onPressed: () {
                                // launch("https://pub.dartlang.org/packages/groovin_widgets");
                              },
                            ),
                            FlatButton.icon(
                              icon: Icon(Icons.book),
                              label: Text("Contribute"),
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
          ],
        ),
        ExpansionTile(
          leading: Icon(
            Icons.alternate_email,
            color: Colors.indigoAccent,
          ),
          title: Text(
            "Contact and Pages",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.tab_unselected,
                color: Colors.lightBlueAccent,
              ),
              title: Text("@GroovinChipDev"),
              onTap: () {
                // launch("https://twitter.com/GroovinChipDev");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.redAccent,
              ),
              title: Text("groovinchip@gmail.com"),
              onTap: () {
                // launch("mailto:groovinchip@gmail.com");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.indigo,
              ),
              title: Text("Join my Discord Server"),
              onTap: () {
                // launch("https://discord.gg/3wEfggg");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.cast_connected,
                color: Colors.black,
              ),
              title: Text("GroovinChip"),
              onTap: () {
                // launch("https://github.com/GroovinChip");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.youtube_searched_for,
                color: Colors.red,
              ),
              title: Text("GroovinChip Dev"),
              onTap: () {
                // launch("https://www.youtube.com/channel/UCqRA9X1SF1AyCNYkFp7gLTw?view_as=subscriber");
              },
            ),
          ],
        ),
      ]),
    );
  }
}
