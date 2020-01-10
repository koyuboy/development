import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final List<Map<String, Object>> questions = const[
    {
      'question': 'What\'s Enes\'s gender?',
      'answer': ['Male', 'Female', 'Undefined']
    },
    {
      'question': 'What\'s Enes\'s real name?',
      'answer': ['Enes1', 'Enes2', 'Enes3']
    },
    {
      'question': 'Which word is the most convenient one for Enes?',
      'answer': ['Chomar', 'Clever', 'Wisdom']
    },
  ];


  String result = '';

    

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Enes2'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  questions[_questionIndex]['question'],
                  style: TextStyle(fontSize: 22.5),
                ),
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                    var answerIndex = (questions[_questionIndex]['answer'] as List<String>).indexOf(answer);
                return Container(
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: ()
                    {
                      switch (_questionIndex) {
                        case 0:
                          switch (answerIndex) {
                            case 0:
                                result = '';
                                break;
                            default:
                              result = 'Wrong!';
                              break;
                          }
                          break;
                        case 1:
                          switch (answerIndex) {
                            case 1:
                                result = '';
                                break;
                            default:
                              result = 'Wrong!';
                              break;
                          }
                          break;
                        case 2:
                          switch (answerIndex) {
                            case 0:
                                result = '';
                                break;
                            default:
                              result = 'Wrong!';
                              break;
                          }
                          break;
                        default:
                          break;
                      }
                      setState(() {
                        if(result == 'Wrong!')
                        {
                          _questionIndex = _questionIndex;
                        }
                        else if(result == '')
                        {
                          if(_questionIndex < 2)
                            _questionIndex += 1;
                          else 
                            _questionIndex = 0;
                        }
                      });
                    },
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Text(
                      answer,
                    ),
                  ),
                );
              }).toList(),

              Container(
                margin: EdgeInsets.all(50),
                width: double.infinity,
                child: Text(
                  result,
                  style: TextStyle(
                   color: Colors.red,
                   fontSize: 25, 
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
