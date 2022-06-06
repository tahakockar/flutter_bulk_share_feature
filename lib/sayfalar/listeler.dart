import 'package:flutter/material.dart';
import 'package:fluttetapp/main.dart';


void main() {

  runApp(Listeler());
}

class Listeler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child:  ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.subdirectory_arrow_left, color: Colors.pink,),
            title: const Text('Anasayfa'),
      onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage())
        );
      },
          ),

          ListTile(
            title: const Text("ListTile Title Example"),
            subtitle: const Text("ListTile Subtitle"),
            trailing: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage())
              );
            },
          ),
          const ListTile(
            title: Text("ListTile Title Example"),
            subtitle: Text("ListTile Subtitle"),
            trailing: Icon(Icons.add),
          ),
          const ListTile(
            title: Text("ListTile Title Example"),
            subtitle: Text("ListTile Subtitle"),
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}