import 'package:auroralink/src/Screen/chat/massage.dart';
import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:  ListView(
        children: <Widget>[
          ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://auroralink.id/uploads/1/2019-06/logoauroralinkhdtransparan.png'),
          ),
          title: Text('Horse'),
          subtitle: Text('A strong animal'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ChatMessage())),
          selected: true,
        ),
        ],
      )
    );
  }
}