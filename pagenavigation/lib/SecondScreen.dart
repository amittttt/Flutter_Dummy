import 'package:flutter/material.dart';
import './ThirdScreen.dart';



    class SecondPage extends StatefulWidget{
    @override
    _SecondPageState createState()=>  _SecondPageState();
    }

    class _SecondPageState extends State<SecondPage>{
    @override
    Widget build(BuildContext context){
        return new Scaffold(
          appBar: AppBar(title: Text("Page 2")),
            body:Column(
            children: <Widget>[
                new Center(
                child: new Text("Page 2"),
                ),
                RaisedButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));},
                child: new Text("go to third Page 3"),)
            ],
            )
        );
    }
    }