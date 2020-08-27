import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink.shade400,
        title: Text('SignUp',textAlign: TextAlign.center,style: TextStyle(fontSize: 30.0,color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "User Name"),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                obscureText: true,
              ),
              RaisedButton(
                child: Text('SignUp'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
