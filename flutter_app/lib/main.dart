import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';
import './quiz.dart';
import './result.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget{

    @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State{
  int _questionIndex = 0;
  int _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    final _questions = const[
      {'questionText':'What\'s your favorite color?',
       'answers':[
         {'text':'Black','score':10},   
         {'text':'Red','score':8},
         {'text':'Green','score':5},
         {'text':'White','score':3},
         ],
      },
      {'questionText':'What\'s your favorite animal?',
        'answers':[
         {'text':'Black','score':10},
         {'text':'Red','score':8},
         {'text':'Green','score':5},
         {'text':'White','score':3},
         ],
      },
      {'questionText':'What\'s your favorite cat?',
        'answers':[
         {'text':'Black','score':10},
         {'text':'Red','score':8},
         {'text':'Green','score':5},
         {'text':'White','score':3},
         ],
      }
    ];

    void _resetQuiz(){
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }
    void _answerQuestion(int score){
      _totalScore = _totalScore + score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });  
      print(_questionIndex);
      if(_questionIndex < _questions.length){
        print("we have more questions to check !!!");
      } 
    }
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("MyFirstApp"),   
      ),
      body: _questionIndex < _questions.length
       ?
        Quiz(
          answerQuestion:_answerQuestion,
          questions:_questions,
          questionindex: _questionIndex
          )
        : Result(_totalScore,_resetQuiz) ,
    ),
    );
    }
  }


