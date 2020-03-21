import 'package:flutter/material.dart';
void doSome(){
}

class ChooseInUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(// <-- STACK AS THE SCAFFOLD PARENT
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // <-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Scaffold(
            backgroundColor: Colors.transparent,
            body: new Center(
              child: new Column(
                children: <Widget>[
                  Container(
                      padding: new EdgeInsets.fromLTRB(30.0,35.0,30.0,10.0),
                      child: FlutterLogo(size: 100)),
                  new Text('Family Organizer',
                      style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.green,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold)),
                  new SizedBox(height: 40.0),
                  new Text('Simplifying Everyday',
                      style: new TextStyle(
                          fontSize: 19.0,
                          color: Colors.black54,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold)),
                  new Text('Family Life',
                      style: new TextStyle(
                          fontSize: 19.0,
                          color: Colors.black54,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold)),
                  new SizedBox(height: 40.0),
                  new SizedBox(
                    height: 20.0,
                  ),

                  SizedBox(
                    width: 300.0,
                    height: 40.0,
                    child: new FlatButton(
                        color: Color.fromRGBO(84, 84, 84, 0.80),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        onPressed: doSome,
                        child: Text(
                          'Get My Family Started',
                          style: TextStyle(fontSize: 20.0),
                        )),
                  ),
                  new SizedBox(height: 10.0,),
                  SizedBox(
                    width: 300.0,
                    height: 40.0,
                    child: new FlatButton(
                        color: Color.fromRGBO(214, 214, 214, 0.8),
                        textColor: Colors.black87,
                        splashColor: Colors.green,
                        onPressed: doSome,
                        child: Text(
                          'Existing Family Account',
                          style: TextStyle(fontSize: 20.0),
                        )),
                  ),

                ],
              ),
            ),
          ),
        ]);
  }
}