import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final String text;
  final VoidCallback callBack;

  ButtonCard({required this.text,required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          callBack();
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            wordSpacing: -1.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow[200],
          minimumSize: Size(280, 80),

        ),
      ),
    );
  }
}
