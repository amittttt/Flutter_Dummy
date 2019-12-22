import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score,this.resetHandler);

  String get resultPharse{
    var resulttext = "You did it!"+ (this.score).toString();
    print(resulttext);
  if(score>=8){
     resulttext = "You did it! score"+ (this.score).toString();
  }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
             Text(
          resultPharse,
           style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
           ),
           FlatButton(
             child: Text("Reset Quiz"),
             textColor: Colors.blue,
              onPressed: resetHandler,
              ),
          ],
        ),
        );
  }
}