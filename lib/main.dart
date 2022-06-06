// @dart=2.9

import 'package:flutter/material.dart';
import 'package:fluttetapp/sayfalar/ayarlarsayfas%C4%B1.dart';
import 'package:fluttetapp/sayfalar/sharesayfas%C4%B1.dart';
import 'package:fluttetapp/services/advert-service.dart';

void main() => runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);
class HomePage extends StatefulWidget{
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() =>_HomePageState();

}
class _HomePageState extends State<HomePage>{
  final AdvertService _advertService = AdvertService();
@override

void initState() {
    _advertService.showBanner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.question_answer , color: Colors.red),
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) =>  const Paylas()),);
        },
      ),
      bottomNavigationBar:  BottomAppBar(
        color: Colors.red,
        child: Row(

          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(

              icon: const Icon(

                Icons.settings, // sol alt icon
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Settings()),);

              },
            ),

            const Text("AnaSayfa",style: TextStyle(color: Colors.white ,fontSize: 20,fontStyle: FontStyle.italic,),),
            const Expanded(child: SizedBox()),

          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text("İnstagram için Toplu mesaj" ,style: TextStyle(color: Colors.black87 ,fontSize: 20),),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Oluştur" ,style: TextStyle(color: Colors.black ,fontSize: 30),),
                  SizedBox(
                    height: 20,
                  ),





                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Nasıl Çalışır",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 12,),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        populerCard('lib/images/4.2..png'),
                        populerCard('lib/images/1.1.png'),
                        populerCard('lib/images/2.1.png'),
                        populerCard('lib/images/3.1.png'),
                      ],

                    ),
                  )

                ],
              ),

            ),
             Text2(),

          ],
        ),

      ),
    );
  }

  Widget populerCard(image){
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color:Colors.red,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(image)
            )
        ),
      ),
    );
  }

  Widget normalCard(image){
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color:Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(image)
            )
        ),
      ),
    );
  }

  Widget Text2(){
    return Container(
      padding: EdgeInsets.all(40),
      child:Text("Telefonunuzda Snapchat , WhatsApp , Twitter , Telegram , Vb uygulamalar kayıtlı ise aynı şekilde Toplu mesaj göndere bilirsiniz",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );

  }

}


