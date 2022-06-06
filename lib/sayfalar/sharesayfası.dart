import 'package:flutter/material.dart';
import 'package:fluttetapp/main.dart';
import 'package:share/share.dart';


void main() => runApp(const Paylas());

class Paylas extends StatelessWidget {
  const Paylas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text("Mesaj Oluştur"),
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
            body: const Center(child: ContentShare())));

  }
}

class ContentShare extends StatefulWidget {
  const ContentShare({Key? key}) : super(key: key);

  @override
  ShareState createState() => ShareState();
}

class ShareState extends State<ContentShare> {
  String text = '';
  String subject = '';

  _onShare(BuildContext context) async {
    final RenderBox box = context.findRenderObject() as RenderBox;
    await Share.share(
        text,
        subject: subject,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: TextField(

                        maxLines: 7,
                  textAlign: TextAlign.center,

                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20 ),

                        decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),    // alt çizgi rengi
                            ),
                          labelText: 'Mesaj Yaz',
                          labelStyle: TextStyle(color: Colors.red)

                        ),
                        onChanged: (String value) => setState(() {
                          text = value;
                        }),
                      )),


                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(246,60,66,1),
                            padding: EdgeInsets.all(10),
                          ),
                        child: const Text('Paylaş'),
                        onPressed:
                        text.isEmpty ? null : () => _onShare(context),

                      ))


                ],
              ),
            )));
  }
}

