import 'package:flutter/material.dart';

class Proposal extends StatefulWidget {
  @override
  _ProposalState createState() => _ProposalState();
}

class _ProposalState extends State<Proposal> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: <Widget>[
            Text("ini halaman Proposal")
          ],
        ),
      ),
    );
  }
}