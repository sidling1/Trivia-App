import 'package:http/http.dart';
import 'dart:convert';

class Question{
    late String question;
    late String correctAnswer;
    late List incorrectAnswers;

    Question({required this.question,required this.correctAnswer,required this.incorrectAnswers});

    bool isCorrect(String answer){
        if(answer == correctAnswer){
            return true;
        }else{
            return false;
        }
    }

}