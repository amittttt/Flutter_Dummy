import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  FourthPageState createState() =>  FourthPageState();
}

class FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Page 4")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text('PAGE 4')),
          RaisedButton(
            child: Text("aditional back button"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );  
  }
}
