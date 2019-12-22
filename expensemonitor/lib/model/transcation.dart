import 'package:flutter/cupertino.dart';

class Transcation {
  String id;
  String title;
  double amount;
  DateTime date;

  Transcation({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date
  });

}