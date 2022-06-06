import 'package:flutter/material.dart';
import 'package:fluttetapp/sayfalar/ayarlarsayfas%C4%B1.dart';

void main() => runApp(Bizkimiz());

class Bizkimiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Biz Kimiz"),
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
            Text("2020 yılında kurulmuş  Genç , dinamik , çalışkan , ve yetenekli bir ekip , Mobil yazılım , Desktop yazılım , yapay zeka, web yazılımları "
                "Başta olmak üzere birçok alanda hizmet vermekteyiz  ")
            )
        ),
      ),
    );
  }
}