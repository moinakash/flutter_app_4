import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../math.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        alignment: Alignment.center,
        margin: EdgeInsets.all(10.0),
        color: Colors.deepPurpleAccent,
        child:

        new colm());
  }
}

class colm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ new ImageAsset(),new Row1(), new Row2()
          ,new Row1(), new Row2()
         ,new myButton(),new myButton2()],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(


      color: Colors.black,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [



            Text(
              "Name : ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Akash",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            )
          ],
        ));
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Status  : ",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${GenarateLuckyNumber()}",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            )
          ],
        ));
  }
}

class ImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage('images/img.png');
   Image image = Image(image: assetImage);
   return Container(
     margin: EdgeInsets.all(10),
       height:200.0,
       width: 200.0
       ,child: image);
  }



}

class myButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(

      margin: EdgeInsets.all(20.0),
      height: 40,
      width: 200,
      child:
        RaisedButton.icon(
          elevation: 10,
          icon: Icon(Icons.access_alarm),
          color: Colors.lightGreen,
          label: Text("See Toast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          textColor: Colors.white,
          onPressed: (){
            //action
            _showToast(context);

          /*  Fluttertoast.showToast(
                msg: "This is Toast messaget",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,

            );*/

          },

        )
    );


  }
}

class myButton2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(

        margin: EdgeInsets.all(20.0),
        height: 40,
        width: 200,
        child:
        RaisedButton(
          elevation: 10,
          color: Colors.lightGreen,
          child: Text("See Alertdialog",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          textColor: Colors.white,
          onPressed: (){
            //action
            _alertDialog(context);

            /*  Fluttertoast.showToast(
                msg: "This is Toast messaget",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,

            );*/

          },

        )
    );


  }
}


void _showToast(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Welcome to my App'),
      action: SnackBarAction(
          label: 'Close', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );



}

void _alertDialog(BuildContext context){

  var alertDialog = AlertDialog(
    title: Text("Alert Title"),
    content: Text("Alert Description")

  );

  showDialog(context: context,
  builder: (BuildContext context){
    return alertDialog;
  });
}

