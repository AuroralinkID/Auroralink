import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pesan(),
    );
  }
}
class _Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1000,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('row $index'),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}