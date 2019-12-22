import 'package:flutter/material.dart';
import './fourth.dart';
class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() =>  ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Page 3")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
                new Center(
                child: new Text("Page 2"),
                ),
                RaisedButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => FourthPage()));},
                child: new Text("go to third Page 3"),)
            ],
      ),
    );  
  }
}
