import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

//Stateless Widget
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
      return Container (
          width: double.infinity,
          child: RaisedButton( 
            
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(answerText),
              onPressed: selectHandler,
          ),
      );
  }

}