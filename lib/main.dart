import 'package:flutter/material.dart';
import 'package:trivia/screens/home.dart';
import 'package:trivia/screens/categoryselect.dart';
import 'package:trivia/screens/loading.dart';
import 'package:trivia/screens/quiz.dart';
import 'package:trivia/screens/finish.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/catsel': (context) => CategorySelect(),
      '/quiz':(context) => Quiz(),
      '/loading':(context)=> Loading(),
      '/finish':(context)=>Finish(),
    },
  ));
