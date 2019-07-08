import 'package:flutter/material.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Notifikasi(),
    );
  }
}

class _Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemBuilder: (context, position) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                  child: Text("Judul Pesan",  //variable judul
                    style: TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                  child: Text("Isi Pesan",  //variable deskripsi
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "5m", //variable waktu realtime
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon( //variable icon
                      Icons.star_border,
                      size: 35.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 2.0,
          color: Colors.grey,
        )
      ],
    );
  },
//   itemCount: sendersList.length,
// ),
    );
  }
}
