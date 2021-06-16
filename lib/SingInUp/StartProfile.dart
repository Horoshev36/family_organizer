import 'package:flutter/material.dart';

var pass;

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

class StartProfile extends StatefulWidget {
  @override
  createState() => new StartProfileState();
}

class StartProfileState extends State<StartProfile> {
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
                      'Кто вы?',
                      style: CustomTextStyle.headers(context),
                    ),
                    new SizedBox(
                      height: 40.0,
                    ),
                    new Card(
                      child: Column(
                        children: <Widget>[
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90.0,
                    )
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
                    labelText: 'Имя',
                    labelStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 23,
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
                    if (value.isEmpty) return 'Введите ваше имя';
                  }),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Фамилия',
                      labelStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(93, 93, 93, 1.0),
                      letterSpacing: 0.9,
                      height: 1.2),
                  // ignore: missing_return
                  validator: (value) {
                    pass = value;
                    if (value.isEmpty) return 'Введите вашу фамилию';
                  }),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Дата рождения',
                    labelStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 23,
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
                    if (value.isEmpty) return 'Введите вашу дату рождения';
                  }),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Номер телефона',
                    labelStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 23,
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
                    if (value.isEmpty) return 'Введите ваш номер телефона';
                  }),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ));
  }
}
