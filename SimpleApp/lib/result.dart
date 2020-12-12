import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler; 

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 8) {
      resultText = 'Score could not be achieved!';
    } else if(resultScore <= 12)
    {
      resultText = 'You have answered most of the questions';
    } else if(resultScore <= 16)
    {
      resultText = 'High score';
    } else {
      resultText = 'Your score is awkward!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(children: <Widget>[
          Text(
            resultPhrase,  //function pointer
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,

          ),
          FlatButton(onPressed: resetHandler, 
          child: Text('Restart Quiz!',),
          textColor: Colors.blue,
          ),

        ],)
    );
  }


}