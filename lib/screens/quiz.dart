import 'package:flutter/material.dart';
import 'package:trivia/components/buttoncard.dart';
import 'package:trivia/components/gettrivia.dart';
import 'package:trivia/components/options.dart';
import 'package:trivia/components/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  int questionNumber = 0;
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final questionCurrent = args["questions"][questionNumber];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        leading: Container(
        color: Colors.red,
        height:30.0,
        width: 30.0,
        child: IconButton(
        onPressed:(){
              Navigator.pushReplacementNamed(context, '/home');
          },
        icon: Icon(Icons.close,size:30.0),
        ),
      ),
        title: Text(
          '${questionNumber+1} / ${args["amount"]}',
          style: TextStyle(
          fontSize: 35.0,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
      ),
      body:Column(
        children: <Widget>[
          Text(
              '${questionCurrent.question}',
            style: TextStyle(
              fontSize: 30.0,

            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50.0,),
          Options(question: questionCurrent,callback: (isCorrect){
            setState(() {
              if(isCorrect)correctAnswers++;
              if(questionNumber <  args["amount"]-1)
              questionNumber++;
              else{
                Navigator.pushReplacementNamed(context, '/finish',arguments: {"score" : correctAnswers});
              }
            });
          },),
        ],
      ),
    );
  }
}
