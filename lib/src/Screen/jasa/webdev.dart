import 'package:auroralink/src/Bloc/Jasa/WebdevBloc.dart';
import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WebDev extends StatefulWidget {
  @override
  _WebDevState createState() => _WebDevState();
}

class _WebDevState extends State<WebDev> {
  @override
  void initState() {
    webdevbloc.fetchAllWebdev();
    super.initState();
  }

  @override
  void dispose() {
    webdevbloc.dispose();
    super.dispose();
  }
    circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    body: StreamBuilder(
      stream: webdevbloc.webDevall, 
      builder: (context, AsyncSnapshot<Webdev> snapshot) {
        if(snapshot.hasData){
          return builtlist(snapshot);
        }else if(snapshot.hasError){
          return Text(snapshot.error.toString());
          }return Center(child: circularProggress(),);
      },
      
    )
    );
  }
  Widget builtlist(AsyncSnapshot<Webdev> snapshot){
    return ListView.builder(
      itemCount: snapshot.data.listdatum.length,
      itemBuilder: (buildcontext, int index){
        return ListTile(
           title: Text(snapshot.data.listdatum[index].judul),
        );
      },
    );

  }

}
