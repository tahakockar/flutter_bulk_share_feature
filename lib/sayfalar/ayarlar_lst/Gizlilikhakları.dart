import 'package:flutter/material.dart';
import 'package:fluttetapp/sayfalar/ayarlarsayfas%C4%B1.dart';



class GizlilikHaklari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Gizlilik Hakları"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: const Icon(Icons.subdirectory_arrow_left),
                onPressed: () {  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Settings()),); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.all(50),
            child: const Align(alignment:Alignment.center, child:
            Text("Tüm Hakları '4.LeventSoftware' aittir",style: TextStyle(color: Colors.blue ,fontSize: 14,fontStyle: FontStyle.italic,),),
            )
        ),
      ),
    );
  }
}