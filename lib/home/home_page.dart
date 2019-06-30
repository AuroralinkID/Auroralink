import 'package:auroralink/chat/chat.dart';
import 'package:auroralink/home/home.dart';
import 'package:auroralink/navbar/fab_bottom_app_bar.dart';
import 'package:auroralink/navbar/fab_with_icons.dart';
import 'package:auroralink/navbar/layout.dart';
import 'package:auroralink/notifikasi/notifikasi.dart';
import 'package:auroralink/riwayat/riwayat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auroralink/appbar/drawer.dart';

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

//INI CLASS HOMEPAGE//
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _lastSelected = 0;

  final _page = [Home(), Pesan(), Riwayat(), Notifikasi(),];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 0;
    });
  }

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
            DrawerHeader(
              teks: "Sofan wahyudi",
              email: "aurora.an98@gmail.com",
              img: Image.asset('assets/img/icon_auroralink.png'),
            ),
            new ListBar(
              teks: "Profile",
              icon: Icons.arrow_forward_ios,
            ),
            new ListBar(
              teks: "Pesan",
              icon: Icons.arrow_forward_ios,
            ),
            new ListBar(
              teks: "Pengaturan",
              icon: Icons.arrow_forward_ios,
            ),
            new ListBar(
              teks: "Logout",
              icon: Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
      //AKHIRAN DRAWER//

      //AWALAN BODY//
      body: _page.elementAt(_lastSelected),
      //AKHIRAN BODY//
      //AWALAN BOTTOM NAVBAR//
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.white,
        selectedColor: Colors.blueGrey,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.chat, text: 'Chat'),
          FABBottomAppBarItem(iconData: Icons.event_note, text: 'Riwayat'),
          FABBottomAppBarItem(
              iconData: Icons.notifications, text: 'Notifikasi'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [Icons.sms, Icons.mail, Icons.phone];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
}
