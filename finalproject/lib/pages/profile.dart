import 'package:finalproject/main.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset('assets/profile.png'),
          RaisedButton(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.blueAccent,
          padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: Text('Logout'),
          )
        ]),
      ),

    );
  }
}

//void navigateToMain(){
  //  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(), fullscreenDialog: true));
  //}