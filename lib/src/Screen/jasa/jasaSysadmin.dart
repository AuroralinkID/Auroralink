import 'package:auroralink/src/Bloc/Jasa/JasaSysadminBloc.dart';
import 'package:auroralink/src/Models/Jasa/SysadminModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class JasaSysadmin extends StatefulWidget {
  @override
  _JasaSysadminState createState() => _JasaSysadminState();
}

class _JasaSysadminState extends State<JasaSysadmin> {
  @override
  void initState() {
    sysbloc.fetchAllSys();
    super.initState();
  }
  // @override
  // void dispose() {
  //   sysbloc.dispose();
  //   super.dispose();
  // }
    circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }


  @override
  Widget build(BuildContext context) {
  return  Scaffold( 
    body: StreamBuilder(
      stream: sysbloc.servisall, 
      builder: (context, AsyncSnapshot<Sysadmin> snapshot) {
        if(snapshot.hasData){
          return builtlist(snapshot);
        }else if(snapshot.hasError){
          return Text(snapshot.error.toString());
          }return Center(child: circularProggress(),);
      },
      
    )
    );
  }
  Widget builtlist(AsyncSnapshot<Sysadmin> snapshot){
    return ListView.builder(
      itemCount: snapshot.data.sysadmin.length,
      itemBuilder: (buildcontext, int index){
        return ListTile(
           title: Text(snapshot.data.sysadmin[index].nama),
           subtitle: Text(snapshot.data.sysadmin[index].desk),
        );
      },
    );
  }
}