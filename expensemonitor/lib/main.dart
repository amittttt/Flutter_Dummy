import 'package:expensemonitor/widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import 'package:expensemonitor/widgets/transcation_list.dart';
import 'model/transcation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Quicksand',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  final List<Transcation> _userTransaction = [
    Transcation(id:'t1',title:'New Shoes', amount: 69.54, date:DateTime.now()),
    Transcation(id:'t1',title:'New Shoes', amount: 69.54, date:DateTime.now())
  ];

  void _addNewTransaction(String title, double amount){
    final newTx = Transcation( 
      title: title,  
    amount: amount, 
    date: DateTime.now(),
    id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx); 
    });
  }


  // call function for create model (show model)
  void _startAddNewTransaction(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
      return GestureDetector(
        onTap: (){},
        child: NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      );
    },);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: ()=>_startAddNewTransaction(context),
            )
          ],
        ),
        body: WillPopScope(
          onWillPop: () async {
            print("Hello Team !!!");
          },
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.blue,
                    child: Container(
                      width: double.infinity,
                      child: Text("CHART !!!!"),
                    ),
                    elevation: 5,
                  ),
                ),
                TransactionList(_userTransaction),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: ()=>_startAddNewTransaction(context),
        ));
  }
}
