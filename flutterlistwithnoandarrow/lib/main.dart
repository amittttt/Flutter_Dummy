import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('DES 0803 Stats with Recomm')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  final titles = [
    '4xx Errors',
    '5xx Errors',
    'CPU Usage',
    'Traffic',
    'Failed Transaction',
    'Unexpected APP Pool',
    'CPU Crosses',
    'Memory Crosses',
    'Load in KB',
    'DB Timeouts',
    'Service Response Time',
    'Service Transactions'
  ];
  final scores = [
    '22%',
    '33%',
    '123%',
    '43%',
    '55%',
    '444%',
    '23%',
    '123%',
    '533%',
    '55%',
    '2%',
    '10%'
  ];

  final iconList =[
    'arrow_downward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward',
    'arrow_downward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward',
    'arrow_upward'
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Container(
        height: 70,
        child: Card(
            child: new Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                //color: Colors.blue,
                height: 70.0,
                width: 280.0,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      titles[index],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 4.0),
                //color: Colors.red,
                width: 60.0,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      scores[index],
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 2.0),
                //color: Colors.red,
                width: 40.0,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    iconList[index]=="arrow_upward"?Icon(Icons.arrow_upward, size: 40, color: Colors.red.shade400,):Icon(Icons.arrow_downward, size: 40, color: Colors.green.shade400,),
                    
                  ],
                ),
              ),
            ],
          ),
        )),
      );
    },
  );
}
