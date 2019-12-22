import 'package:flutter/material.dart';
import './SecondScreen.dart';

void main() => runApp(MyApp());
    class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: new AppBar(),
            body: MyAppPage()
        ),
        );
    }
    }

    class MyAppPage extends StatefulWidget{
    MyAppPage({Key key,}):super(key:key);

    @override
    _MyAppPageState createState()=> new _MyAppPageState();
    }

    class _MyAppPageState extends State<MyAppPage>{

    @override
    Widget build(BuildContext context){
        return new Scaffold(
        body:RaisedButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));},
        child: new Text("got to page 1"),)
        );
    }
    }
