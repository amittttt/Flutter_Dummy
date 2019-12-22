import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/Answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions ;
  final Function answerQuestion;
  final int questionindex;

  Quiz(
    {
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionindex
    }
  );

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        children: <Widget>[
          Question(
            questions[questionindex]['questionText']  
            ),
            ...(questions[questionindex]['answers'] as List<Map<String,Object>>).map((answer){
              return Answer(()=>answerQuestion(answer['score']),answer['text']);
            }).toList()
        ],
      );
    
  }
}