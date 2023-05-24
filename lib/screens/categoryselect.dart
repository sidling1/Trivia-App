import 'package:flutter/material.dart';
import 'package:trivia/components/buttoncard.dart';

class CategorySelect extends StatefulWidget {

  @override
  State<CategorySelect> createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {

  final List<String> categories = [
    'General Knowledge' ,
    'Entertainment: Books' ,
    'Entertainment: Film' ,
    'Entertainment: Music',
    'Entertainment: Musicals & Theatres',
    'Entertainment: Television',
    'Entertainment: Video Games',
    'Entertainment: Board Games',
    'Science & Nature',
    'Science: Computers',
    'Science: Mathematics' ,
    'Mythology' ,
    'Sports' ,
    'Geography' ,
    'History',
    'Politics' ,
    'Art' ,
    'Celebrities',
    'Animals',
    'Vehicles' ,
    'Entertainment: Comics' ,
    'Science: Gadgets' ,
    'Entertainment: Japanese Anime & Manga' ,
    'Entertainment: Cartoon & Animations'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        leading: IconButton(
          onPressed: (){
              Navigator.pushReplacementNamed(context, '/home');
          },
            icon: Icon(Icons.arrow_back_rounded,size: 30.0,)
        ),
        title: Text(
            'Select Category',
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                child: ButtonCard(
                  text: categories[index],
                  callBack: (){
                    Map args = {
                      "category" : categories[index],
                      };
                      Navigator.pushReplacementNamed(context, '/loading',arguments: args);
                  },
                ),
              );
            },
          ),
    );
  }
}
