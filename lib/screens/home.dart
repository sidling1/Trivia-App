import 'package:flutter/material.dart';
import 'package:trivia/components/buttoncard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[600],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
          leading: Container(
            color: Colors.red,
            height:30.0,
            width: 30.0,
            child: IconButton(
              onPressed:(){

              },
              icon: Icon(Icons.close,size:30.0),
            ),
          ),
        title: Text(
          'TRIVIA APP',
          style: TextStyle(
            fontSize: 35.0,
            letterSpacing: 2.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,300.0,0.0,0.0),
            child: Text(
                'Spin the Wheel to Play or press Select a category below',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: 40.0,),
          ButtonCard(
            text:'Select a category',
            callBack: (){
              print('pressed');
              Navigator.pushReplacementNamed(context, '/catsel');
            },
          ),
            SizedBox(height: 20.0,),
            ButtonCard(
                text: 'High Score',
                callBack: (){
            }),
        ],
      )
    );
  }
}

