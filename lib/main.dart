// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: prefer_const_constructors
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dialer App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<> {
    var contaclist = ["Samskar Koirala","Ronik karki","Ritik Khadgi","Aadarsh Rauniyar"];
    var phonenumber =["9861798562","9851789652","9841784512","9801789654"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        backgroundColor: Color(0xFFE21717),
        title: Text("Phone Dialer App"),
      ],),
      body: ListView.builder(
        itemCount: contaclist.length,
        itemBuilder: (context,inxex){
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contaclist[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: (){
                launch("tel: //${phonenumber[index]}");
              },
            ),
          );
        },
      )
    );
  }
}