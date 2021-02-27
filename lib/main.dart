import 'package:flutter/material.dart';
import 'package:flutter_app_4/screens/home.dart';
import 'math.dart';

void main() {
  runApp(new abcd());
}

/*void main() => runApp(new MainActivity());*/


class abcd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Math App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is Math Appbar")
        ),
        body: new Home(),

      )
    );



  }
  
  
}
