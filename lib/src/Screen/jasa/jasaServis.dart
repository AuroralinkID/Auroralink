import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:auroralink/src/Models/Jasa/ServisModels.dart';
import 'package:auroralink/src/Bloc/Jasa/JasaServisBloc.dart';

class JasaServis extends StatefulWidget {
  @override
  _JasaServisState createState() => _JasaServisState();
}

class _JasaServisState extends State<JasaServis> {
  @override
  void initState() {
    servisbloc.fetchAllServis();
    super.initState();
  }
  // @override
  // void dispose() {
  //   servisbloc.dispose();
  //   super.dispose();
  // }
      circularProggress() {
    return Center(
      child: SpinKitWanderingCubes(color: Colors.lightBlue, shape: BoxShape.circle),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    body: StreamBuilder(
      stream: servisbloc.servisall, 
      builder: (context, AsyncSnapshot<Servis> snapshot) {
        if(snapshot.hasData){
          return builtlist(snapshot);
        }else if(snapshot.hasError){
          return Text(snapshot.error.toString());
          }return Center(child: circularProggress(),);
      },
      
    )
    );
  }
  Widget builtlist(AsyncSnapshot<Servis> snapshot){
    return ListView.builder(
      itemCount: snapshot.data.servis.length,
      itemBuilder: (buildcontext, int index){
        return ListTile(
           title: Text(snapshot.data.servis[index].namaServis),
           subtitle: Text(snapshot.data.servis[index].deskServis),
        );
      },
    );
  }
}