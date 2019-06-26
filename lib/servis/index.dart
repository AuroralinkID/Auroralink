import 'package:flutter/material.dart';
import 'package:auroralink/home/home_page.dart';
import 'package:auroralink/servis/detail.dart';

class serp extends StatelessWidget {
  serp({this.img, this.judul, this.ket});
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
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ServisDetail())),
          selected: true,
        ),
        ],
      )
    );
  }
}
