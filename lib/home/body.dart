//INI CLASS _BUILDTILE//
import 'package:auroralink/jasa/jasa.dart';
import 'package:auroralink/produk/produk.dart';
import 'package:auroralink/project/project.dart';
import 'package:auroralink/servis/index.dart';
import 'package:auroralink/support/support.dart';
import 'package:auroralink/ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:auroralink/home/gird.dart';
import 'package:carousel_pro/carousel_pro.dart';

//INI CLASS HOMEPAGE//
class Home extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //AWALAN APPBAR//

      //AWALAN BODY//
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Container(
                child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          Icons.info,
                          size: 30.0,
                          color: Colors.amber,
                        ),
                        title: Text("Status Project: Selesai", style: TextStyle(color: Colors.lightBlue, fontSize: 15.0)),
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                height: 200,
                width: 400,
                child: Card(
                  color: Colors.white,
                  child: SizedBox(
                      height: 200.0,
                      width: 400.0,
                      child: Carousel(
                        images: [
                          NetworkImage(
                              'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                          NetworkImage(
                              'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                          NetworkImage(
                              'https://auroralink.id/uploads/1/2019-06/smpn_54.png'),
                          NetworkImage(
                              'https://auroralink.id/uploads/1/2019-06/androif.png'),
                          NetworkImage(
                              'https://auroralink.id/uploads/1/2019-06/fshn.png'),
                        ],
                      )),
                ),
              ),
            ],
          ),
          GridView.count(
            crossAxisSpacing: 7.0,
            mainAxisSpacing: 7.0,
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            crossAxisCount: 3,
            shrinkWrap: true,
            children: <Widget>[
              new BuildTile(
                judul: "Servis",
                ikon: Icons.computer,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Servis())),
              ),
              new BuildTile(
                judul: "Support",
                ikon: Icons.business_center,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Support())),
              ),
              new BuildTile(
                judul: "Ticket",
                ikon: Icons.settings_remote,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Ticket())),
              ),
              new BuildTile(
                judul: "Project",
                ikon: Icons.code,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Project())),
              ),
              new BuildTile(
                judul: "Produk",
                ikon: Icons.widgets,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Produk())),
              ),
              new BuildTile(
                judul: "Jasa",
                ikon: Icons.dashboard,
                ontap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Jasa())),
              ),
            ],
          ),
        ],
      ),
      //AKHIRAN BODY//
    );
  }
}
