//INI CLASS _BUILDTILE//

import 'package:auroralink/src/Models/Home/card.dart';
import 'package:auroralink/src/Screen/IconPallete.dart';
import 'package:auroralink/src/Screen/home/gird.dart';
import 'package:auroralink/src/Screen/jasa/listjasa.dart';
import 'package:auroralink/src/Screen/lokasi/lokasi.dart';
import 'package:auroralink/src/Screen/portofolio/portofolio.dart';
import 'package:auroralink/src/Screen/produk/produk.dart';
import 'package:auroralink/src/Screen/project/project.dart';
import 'package:auroralink/src/Screen/proposal/proposal.dart';
import 'package:auroralink/src/Screen/status/status.dart';
import 'package:auroralink/src/Screen/support/support.dart';
import 'package:auroralink/src/Screen/ticket/ticket.dart';
import 'package:flutter/material.dart';
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
          new Container(
            height: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
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
          ),
          new Container(
            height: 120.0,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new CardBody(
                  title: "Portofolio",
                  ikon: Icons.account_balance,
                  warna: Colors.white,
                   ontap: () => Navigator.of(context)
                       .push(MaterialPageRoute(builder: (_) => Portofolio())),
                ),
                new CardBody(
                  title: "Proposal",
                  ikon: Icons.assignment,
                  warna: Colors.white,
                   ontap: () => Navigator.of(context)
                       .push(MaterialPageRoute(builder: (_) => Proposal())),
                ),
                new CardBody(
                  title: "Lokasi",
                  ikon: Icons.pin_drop,
                  warna: Colors.white,
                   ontap: () => Navigator.of(context)
                       .push(MaterialPageRoute(builder: (_) => Lokasi())),
                ),
                new CardBody(
                  title: "Status",
                  ikon: Icons.info,
                  warna: Colors.white,
                   ontap: () => Navigator.of(context)
                       .push(MaterialPageRoute(builder: (_) => Status())),
                ),
              ],
            ),
          ),
          Container(
            child: GridView.count(
              crossAxisSpacing: 7.0,
              mainAxisSpacing: 7.0,
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              crossAxisCount: 4,
              shrinkWrap: true,
              children: <Widget>[
                new BuildTile(
                  judul: "Servis",
                  ikon: Icons.computer,
                  warna: IconPallete.menuRide,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Home())),
                ),
                new BuildTile(
                  judul: "Support",
                  ikon: Icons.business_center,
                  warna: IconPallete.menuCar,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Support())),
                ),
                new BuildTile(
                  judul: "Ticket",
                  ikon: Icons.settings_remote,
                  warna: IconPallete.menuFood,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Ticket())),
                ),
                new BuildTile(
                  judul: "Project",
                  ikon: Icons.code,
                  warna: IconPallete.menuSend,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Project())),
                ),
                new BuildTile(
                  judul: "Produk",
                  ikon: Icons.widgets,
                  warna: IconPallete.menuTix,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Produk())),
                ),
                new BuildTile(
                  judul: "Jasa",
                  ikon: Icons.dashboard,
                  warna: IconPallete.green,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Jasa())),
                ),
                new BuildTile(
                  judul: "Produk",
                  ikon: Icons.widgets,
                  warna: IconPallete.menuTix,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Produk())),
                ),
                new BuildTile(
                  judul: "Jasa",
                  ikon: Icons.dashboard,
                  warna: IconPallete.green,
                  ontap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Jasa())),
                ),
              ],
            ),
          ),
        ],
      ),
      //AKHIRAN BODY//
    );
  }
}
