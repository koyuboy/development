import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase{
    var resultText = '';
    if(resultScore <= 8)
      return  resultText = 'you are awesome and innocent';
    else if(resultScore <= 12)
      return  resultText = 'Pretty likeable';
    else if(resultScore <= 16)
      return  resultText = 'You are strange';
    else
      return  resultText = 'you are so bad';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,  
            child: Text('Restart Quiz!'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
