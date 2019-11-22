import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: new Color(0xFF03A9F4),
            gradient: LinearGradient(
              colors: [new Color(0xFF4FC3F7),new Color(0xFF039BE5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              ),
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 75.0,
              child: Icon(
                Icons.beach_access,
                color: Colors.deepOrange,
                size: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text(
              'RELEASE HEALTH CHECK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
               ),
            ),
          ],
        ),

       Container(
          margin: EdgeInsets.only(top:100),
        ),

        Column(
          children: <Widget>[
            Text(
              "Dsadas"
            ),
          ],
        ),


      ]
      ),
    );
  }
}