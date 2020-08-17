import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle headers(BuildContext context) {
    return new TextStyle(
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
        body: new Center(
          child: SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Text(
                  'Create your',
                  style: CustomTextStyle.headers(context),
                ),
                new Text('family account',
                    style: CustomTextStyle.headers(context)),
                new SizedBox(
                  height: 30.0,
                ),
                new Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: <Widget>[
                            new Text(
                              'ONE THING TO NOTE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(120, 120, 120, 0.8)),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            new Text('Your family shares the same account,',
                                style: toTextDescription(15.0, 73, 163, 72, 1)),
                            new Text('so each person will use the email and',
                                style: toTextDescription(15.0, 73, 163, 72, 1)),
                            new Text('password to sing in.',
                                style: toTextDescription(15.0, 73, 163, 72, 1))
                          ],
                        ),
                      ),
                      Container(
                        width: 350,
                        color: Colors.greenAccent,
                        child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                MyForm(),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

TextStyle toTextDescription(double size, int r, int g, int b, double opacity) {
  return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(r, g, b, opacity),
      letterSpacing: 0.9,
      height: 0.9);
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      width: 250,
      child: Column(
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter email',
                labelStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(93, 93, 93, 1.0),
                  letterSpacing: 0.9,
                  height: 1.2),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) return 'Please input your name';
              }),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Input password',
                  labelStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(93, 93, 93, 1.0),
                  letterSpacing: 0.9,
                  height: 1.2),
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) return 'Please input your name';
              }),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Confirm password',
                  labelStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(93, 93, 93, 1.0),
                  letterSpacing: 0.9,
                  height: 1.2),

              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) return 'Please input your name';
              }),
          SizedBox(
            height: 35,
          ),
        ],
      ),
    ));
  }
}
