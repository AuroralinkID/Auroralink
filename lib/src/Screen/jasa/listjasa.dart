import 'package:auroralink/src/Screen/jasa/itsupport.dart';
import 'package:auroralink/src/Screen/jasa/jasatile.dart';
import 'package:auroralink/src/Screen/jasa/webdev.dart';
import 'package:flutter/material.dart';

class Jasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Pilih Kategori Jasa'),
        ),
        body: new GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new JasaTile(
              judul: "Web Dev",
              ikon: Icons.developer_mode,
              ontap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => WebDev())),
            ),
            new JasaTile(
              judul: "Servis",
              ikon: Icons.developer_board,
              ontap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => WebDev())),
            ),
            new JasaTile(
              judul: "IT Support",
              ikon: Icons.mouse,
              ontap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ITSupport())),
            ),
            new JasaTile(
              judul: "Sysadmin",
              ikon: Icons.dvr,
              ontap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => WebDev())),
            ),
          ],
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ));
  }
}
