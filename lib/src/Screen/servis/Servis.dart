import 'package:flutter/material.dart';
import 'package:auroralink/src/Models/aurora_icons.dart';
class Serp extends StatelessWidget {
  Serp({this.img, this.judul, this.ket});
  final String img;
  final String judul;
  final String ket;


  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Servis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Servis"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://auroralink.id/uploads/1/2019-06/logoauroralinkhdtransparan.png'),
          ),
          title: Text('Horse'),
          subtitle: Text('A strong animal'),
          trailing: Icon(Aurora.analytics),
          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => null())),
          selected: true,
        ),
        ],
      )
    );
  }
}
