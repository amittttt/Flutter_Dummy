import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: new Color(0xFF03A9F4),
            gradient: LinearGradient(
              colors: [new Color(0xFF4FC3F7), new Color(0xFF039BE5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(
                      'assets/images/SplashScreen/splashscreenlogo.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100.0,
            width: 200.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image:
                    new AssetImage('assets/images/SplashScreen/delllogo.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ]),
    );
  }
}
