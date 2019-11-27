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
            appBar: AppBar(title: Text('Application')),
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
      final titles = ['DES', 'B2B', 'Dell.com', 'Premier'];
      final icons = [Icons.directions_bike, Icons.directions_boat,Icons.directions_boat,Icons.directions_boat];

      return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Container(
                  height: 100,
                  child :Card( 
                    
                   child: ListTile(          
                  leading: Icon(icons[index]),
                  title: Text(titles[index], style: TextStyle(fontSize: 20)),
                  trailing: Icon(Icons.keyboard_arrow_right),
                    ),
          ),
          );
        },
      );
    }