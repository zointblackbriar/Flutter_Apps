import 'package:flutter/material.dart';
// import './question.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp()); //takes the widget tree and run it!
// }

void main() => runApp(MyApp()); //put the constructor

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  // var questionIndex = 0;
  // void answerQuestion() {
  //   print('Answer Question here');
  //   setState(() {
  //       questionIndex = questionIndex + 1;
  //   });
  //   print(questionIndex);

  // }
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 8},
        {'text': 'Yellow', 'score': 3}
      ],
    },
    {
        'questionText': 'Who\'s your favourite instructor',
        'answers': [
          {'text': 'Person A', 'score': 1},
          {'text': 'Person B', 'score': 1},
          {'text': 'Person C', 'score': 1},
          {'text': 'Person D', 'score': 1}, 
        ],
    },
    {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
            {'text': 'Rabbit', 'score': 3}, 
            {'text': 'Snake', 'score': 2},
            {'text': 'Elephant', 'score': 5},
            {'text': 'Lion', 'score': 9}
        ],
    }
  ];
    var _questionIndex = 0;
    var _totalScore = 0;

    //resetting the configurations of quiz
    void _resetQuiz() {
      setState(() {
          _questionIndex = 0;
          _totalScore = 0;
      });
    }

    void _answerQuestion(int score) {
        _totalScore += score;

        setState(() {
          _questionIndex = _questionIndex + 1;
        });
        print(_questionIndex);
        if(_questionIndex < _questions.length) {
            print('We have more questions! ');
        } else {
          print('There is no surplus questions');
        }
    }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }

}
