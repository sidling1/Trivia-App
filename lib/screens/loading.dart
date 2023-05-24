import 'package:flutter/material.dart';
import 'package:trivia/components/buttoncard.dart';
import 'package:trivia/components/gettrivia.dart';
import 'package:trivia/components/question.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setUpQuestions(context) async {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    Trivia trivia = Trivia(category: args['category']);
    print(trivia.category);
    await trivia.getData();
    Map argsOut = {
      'amount' : trivia.amount,
      'category': trivia.category,
      'questions' : trivia.questions,
    };

    Navigator.pushReplacementNamed(context, '/quiz',arguments: argsOut);
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setUpQuestions(context);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Text('Loading'),
    );
  }
}
