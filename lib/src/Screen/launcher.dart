import 'package:auroralink/src/Screen/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Launcher extends StatefulWidget {
  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new HomePage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Image.asset("assets/img/auroralink.gif"),
        // new Image.network("https://media.giphy.com/media/fV7DbUDHyx1JtmBGvh/giphy.gif")
      ),
    );
  }
}
