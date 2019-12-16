import 'package:finalproject/pages/setup/sign_in.dart';
import 'package:finalproject/pages/setup/sign_up.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SalonlaReserva'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 20.0), 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/loginpic.png'),
            SizedBox(
              height: 30.0,
            ),
          RaisedButton(
            onPressed: navigateToSignIn,
            color: Colors.blueAccent,
            child: Text('Log in'),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            color: Colors.orange,
            child: Text('Sign up'),
          ),
        ],
      ),),
    );
  }

  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(), fullscreenDialog: true));
  }

  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(), fullscreenDialog: true));
  }
}