import 'package:auroralink/src/Bloc/Jasa/WebdevBloc.dart';
import 'package:auroralink/src/Models/Jasa/WebdevModels.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    body: StreamBuilder(
      stream: webdevbloc.webDevall, 
      builder: (context, AsyncSnapshot<List<Webdev>> snapshot) {
        if(snapshot.hasData){
          return builtlist(snapshot);
        }else if(snapshot.hasError){
          return Text(snapshot.error.toString());
          }return Center(child: CircularProgressIndicator(),);
      },
      
    )
    );
  }
  Widget builtlist(AsyncSnapshot<List<Webdev>> snapshot){
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (buildcontext, int index){
        return ListTile(
           title: Text(snapshot.data[index].judul),
        );
      },
    );

  }

}
