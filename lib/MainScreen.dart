import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
          title: Text('UserName'), //todo
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: null,
                icon: Text(
                  'Next',
                  textScaleFactor: 1.3,
                ),
                label: Icon(
                  Icons.chevron_right,
                  size: 30.0,
                )),
          ],
        ),
      )
    ]);
  }
}
