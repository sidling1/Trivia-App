import 'package:http/http.dart';
import 'dart:convert';
import 'package:trivia/components/question.dart';

class Trivia{
   late String category;
   final String type = 'multiple';
   late String difficulty;
   final int amount = 10;

   late List<Question> questions = [];

   Trivia({ required this.category });

   final Map<String,int> cat = {
     'General Knowledge': 9 ,
     'Entertainment: Books': 10 ,
     'Entertainment: Film': 11 ,
     'Entertainment: Music': 12 ,
     'Entertainment: Musicals & Theatres': 13 ,
     'Entertainment: Television': 14 ,
     'Entertainment: Video Games': 15 ,
     'Entertainment: Board Games': 16 ,
     'Science & Nature': 17 ,
     'Science: Computers': 18 ,
     'Science: Mathematics': 19 ,
     'Mythology': 20 ,
     'Sports': 21 ,
     'Geography': 22 ,
     'History': 23,
     'Politics': 24 ,
     'Art': 25 ,
     'Celebrities': 26 ,
     'Animals': 27 ,
     'Vehicles': 28 ,
     'Entertainment: Comics': 29 ,
     'Science: Gadgets': 30 ,
     'Entertainment: Japanese Anime & Manga': 31 ,
     'Entertainment: Cartoon & Animations': 32,
   };


   late  String url = '?amount=$amount&category=${cat[category]}&type=$type';
  Future<void> getData() async {
    try{
        Response response = await get(Uri.parse('https://opentdb.com/api.php/$url'));

        Map data = jsonDecode(response.body);

        for(int i=0;i<amount;i++){
          String question = data['results'][i]['question'];
          String correctAnswer = data['results'][i]['correct_answer'];
          List incorrectAnswer =data['results'][i]['incorrect_answers'];

          Question instance = Question(question: question,correctAnswer: correctAnswer,incorrectAnswers: incorrectAnswer);

          questions.add(instance);
        }
    }catch(e){
      print('Error');
      print(e);
    }
  }
}