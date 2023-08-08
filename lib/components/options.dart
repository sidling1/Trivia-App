import 'package:flutter/material.dart';
import 'package:trivia/components/question.dart';
import 'package:trivia/components/buttoncard.dart';

class Options extends StatelessWidget {

  final Question question;
  final Function(bool) callback;
  int correctAnswers = 0;
  Options({required this.question,required this.callback});

  final List<String> options = [];


  @override
  Widget build(BuildContext context) {

    options.add(question.correctAnswer);
    options.add(question.incorrectAnswers[0]);
    options.add(question.incorrectAnswers[1]);
    options.add(question.incorrectAnswers[2]);

    options.shuffle();

    return
      Column(
        children: options.map(
            (data){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonCard(text: data, callBack: (){
                    if(question.isCorrect(data)){
                      callback(true);

                    }else{
                      callback(false);
                    }
                  }),
                );
            }
        ).toList(),
      );
  }
}



