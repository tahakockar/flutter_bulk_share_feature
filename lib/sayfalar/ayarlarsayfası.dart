import 'package:flutter/material.dart';
import 'package:fluttetapp/main.dart';
import 'package:fluttetapp/sayfalar/ayarlar_lst/Bizkimiz.dart';
import 'package:fluttetapp/sayfalar/ayarlar_lst/Gizlilikhaklar%C4%B1.dart';
import 'package:fluttetapp/sayfalar/ayarlar_lst/Hakk%C4%B1m%C4%B1zda.dart';
import 'package:fluttetapp/sayfalar/ayarlar_lst/bulut.dart';

void main() => runApp(const Settings());

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Ayarlar"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: const Icon(Icons.subdirectory_arrow_left),
                onPressed: () {  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomePage()),); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: ListView(
          children: <Widget>[


            ListTile(
              leading: Icon(Icons.group, color: Colors.black),
              title: Text('Bizkimiz'),
              trailing:Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bizkimiz())
                );
              },
            ),

            ListTile(
              leading:const Icon(Icons.announcement_outlined, color: Colors.black),
              title: const Text('Hakkımızda'),
              trailing:const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkimizda())
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.announcement, color: Colors.black),
              title: Text('Gizlilik Hakları'),
              trailing:Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GizlilikHaklari())
                );
              },

            ),

            ListTile(
              leading: Icon(Icons.backup, color: Colors.black),
              title: Text('Bulut'),
              trailing:Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bulut())
                );
              },

            ),

          ],
        ),
      ),
    );
  }
}



