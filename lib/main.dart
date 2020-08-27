import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shakhsny/HomeScreen.dart';

import 'package:shakhsny/SignIn.dart';
import 'package:shakhsny/SignUp.dart';

void main() => runApp(EGC());

class EGC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shakhsny',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'roboto'),
      home: MyLoginScreen(),
    );
  }
}

class MyLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Shakhsny())),
              child: Container(
                height: 500.0,
                width: 380.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/EGC.png'), fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(color: Colors.pink.shade400, blurRadius: 20.0)
                    ],
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.pink.shade300,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SignUp()));
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.pink.shade300,
                    child: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SignIn()));
                    },
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 8.0, bottom: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 38.0,
                        shadows: [
                          BoxShadow(color: Colors.pink, blurRadius: 5.0)
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 8.0, right: 8.0, bottom: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'FaceBook',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 38.0),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
//todo list making vaild login

//Suggestion... making the login email password
// create account in the bottom of the starting
//searching for an app which is similar to this one
