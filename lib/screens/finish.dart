import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {



  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Your Score is ${args["score"]}'),
      ),
    );
  }
}
