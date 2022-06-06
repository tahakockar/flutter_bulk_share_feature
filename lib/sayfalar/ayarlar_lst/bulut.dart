import 'package:flutter/material.dart';
import 'package:fluttetapp/sayfalar/ayarlarsayfas%C4%B1.dart';


class bulut extends StatelessWidget {
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
            child:
            alertDialog(context),
        ),
      ),
    );
  }
}


Widget alertDialog(context){
  return AlertDialog(

    content: Text('Sadece yetkililer bu alana giriş yapabilir'),

  );
}