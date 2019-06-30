import 'package:flutter/material.dart';

class Riwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Riwayat(),
    );
  }
}
class _Riwayat extends StatelessWidget {
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