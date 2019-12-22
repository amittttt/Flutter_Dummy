import 'package:flutter/material.dart';
import 'package:expensemonitor/model/transcation.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transcation> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Theme.of(context).primaryColorLight,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$ ${transactions[index].amount.toStringAsFixed(2)}', // string interpolation
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColorDark),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transactions[index].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    DateFormat().format(transactions[index]
                        .date), // Dart third Party package for date :  intl: ^0.15.8
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
