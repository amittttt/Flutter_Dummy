import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
    // Declaring the Variables ::::
  final Function addTx;

  NewTransaction(this.addTx); 

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void sumbitData(){
    final enteredTitle =titleController.text;
    final enterAmount =double.parse(amountController.text);
    if(enteredTitle.isEmpty || enterAmount<=0)
    {
      return;
    }
     widget.addTx(titleController.text,double.parse(amountController.text));
     Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return 
       Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child:  Column(
              crossAxisAlignment:CrossAxisAlignment.end,
              children: <Widget>[
                TextField(decoration: InputDecoration(
                  labelText: "Title"
                ),
                controller: titleController,
                 onSubmitted: (_)=>sumbitData(),
                ),
                TextField(decoration: InputDecoration(
                  labelText: "Amount"
                ),
               controller: amountController,

               onSubmitted: (_)=>sumbitData(),
                ),
                FlatButton(
                  child: Text('Add Transcation'),
                  textColor: Colors.purple,
                  onPressed: sumbitData,
                ),
              ],
            ),
            ),
          
    );
  }
}