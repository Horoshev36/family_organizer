import 'package:flutter/material.dart';


class CustomTextStyle {
  static TextStyle headers(BuildContext context) {
    return  new TextStyle(
    fontSize: 29.0,
    color: Colors.white,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    letterSpacing: 1.8);
  }
}

class CreateFamilyAccount extends StatefulWidget {
  @override
  createState() => new CreateFamilyAccountState();
}

class CreateFamilyAccountState extends State<CreateFamilyAccount> {
  @override
  Widget build(BuildContext context) {
    return Stack(// <-- STACK AS THE SCAFFOLD PARENT
        children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/greenBg.png'), // <-- BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back),
          actions: <Widget>[
            FlatButton.icon(onPressed: null, icon: Text('Next',textScaleFactor: 1.3,), label: Icon(Icons.chevron_right,size: 30.0,)),
          ],
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Create your',style: CustomTextStyle.headers(context),),
              new Text('family account',style: CustomTextStyle.headers(context))

            ],
          ),
        ),
      ),
    ]);
  }
}
