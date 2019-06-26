import 'package:auroralink/auth/login.dart';
import 'package:auroralink/notifikasi/notifikasi.dart';
import 'package:auroralink/pesan/pesan.dart';
import 'package:auroralink/riwayat/riwayat.dart';
import 'package:auroralink/tambah/tambah.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auroralink/servis/index.dart';
import 'package:flutter/gestures.dart';
import 'package:auroralink/pesan/pesan.dart';

//INI CLASS ROUTE VOID//
void main() {
  runApp(MaterialApp(
    home: HomePage(), // becomes the route named '/'
    routes: <String, WidgetBuilder>{
      '/servis': (BuildContext context) => Servis(),
      '/pesan': (BuildContext context) => Pesan(),
      '/login': (BuildContext context) => LoginPage(),
    },
  ));
}
//INI CLASS BOTTOMNAV//
class BottomNav extends StatefulWidget {

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

//INI CLASS LISTBAR//
class ListBar extends StatelessWidget {
  ListBar({this.teks, this.icon});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        title: Text(teks),
        trailing: Icon(icon),
      ),
    );
  }
}

//INI CLASS DRAWERHEADER//
class DrawerHeader extends StatelessWidget {
  DrawerHeader({this.teks, this.email, this.img});

  final String teks;
  final String email;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new UserAccountsDrawerHeader(
            accountName: Text(teks),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.lightBlue
                  : Colors.white,
              child: img,
            )));
  }
}

//INI CLASS _BUILDTILE//
Widget _buildTile(Widget child, {Function() onTap}) {
  return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Color(0x802196F3),
      child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null
              ? () => onTap()
              : () {
                  print('Not set yet');
                },
          child: child));
}

//INI JUGA CLASS BUILDTILE//
class BuildTile extends StatelessWidget {
  BuildTile({this.ikon, this.judul, this.ket, this.ontap});
  final IconData ikon;
  final String judul;
  final String ket;
  final GestureTapCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        children: <Widget>[
          _buildTile(
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(ikon, color: Colors.white, size: 20.0),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Text(judul,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0)),
                  Text(ket,
                      style: TextStyle(color: Colors.black45, fontSize: 12.0)),
                ],
              ),
            ),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Servis())),
          ),
        ],
      ),
    );
  }
}

//INI CLASS HOMEPAGE//
class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //AWALAN APPBAR//
      appBar: AppBar(
        title: Text(
          "Status Servis : On Prosses",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      //AKHIRAN APPBAR //

      //AWALAN DRAWER//
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              teks: "Sofan wahyudi",
              email: "aurora.an98@gmail.com",
              img: Image.asset('assets/img/icon_auroralink.png'),
            ),
            new ListBar(
              teks: "Profile",
              icon: Icons.arrow_forward,
            ),
            new ListBar(
              teks: "Pesan",
              icon: Icons.arrow_forward,
            ),
            new ListBar(
              teks: "Pengaturan",
              icon: Icons.arrow_forward,
            ),
            new ListBar(
              teks: "Logout",
              icon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
      //AKHIRAN DRAWER//

      //AWALAN BODY//
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        children: <Widget>[
          new BuildTile(
            judul: "Servis",
            ket: "Laptop, Komputer",
            ikon: Icons.computer,
          ),
          new BuildTile(
            judul: "Support",
            ket: "Troubleshoot",
            ikon: Icons.business_center,
          ),
          new BuildTile(
            judul: "Ticket",
            ket: "Bantuan Remote",
            ikon: Icons.settings_remote,
          ),
          new BuildTile(
            judul: "Project",
            ket: "Website, Aplikasi",
            ikon: Icons.code,
          ),
          new BuildTile(
            judul: "Produk",
            ket: "List Produk",
            ikon: Icons.widgets,
          ),
          new BuildTile(
            judul: "Jasa",
            ket: "List jasa",
            ikon: Icons.dashboard,
          ),
        ],
      ),
      //AKHIRAN BODY//

      //AWALAN BOTTOM NAVBAR//
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: const Icon(
            Icons.queue_play_next,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tambah()),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
            IconButton(
                icon: Icon(Icons.chat),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pesan()),
                  );
                }),
            IconButton(
              icon: Icon(Icons.play_arrow),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.music_note),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.event_note),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Riwayat()),
                  );
                }),
            IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifikasi()),
                  );
                }),
          ],
        ),
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
