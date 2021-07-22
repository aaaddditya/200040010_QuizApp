import 'questions.dart';

class Quiz {
  int _questionNumber = 0;
  List<Question> _questionList = [
    Question(questionText: 'India is the 7th largest country in the World', questionAnswer: true),
    Question(questionText: 'APJ Abdul kalam is also known steel Man of India ', questionAnswer: false),
    Question(questionText: 'There are 236 Episodes in Friends',questionAnswer: true),
    Question(questionText: 'M&M stands for Mars and Murrie', questionAnswer: true),
  ];
  dynamic nextQuestion(){
    if(_questionNumber < _questionList.length - 1){
      print(_questionNumber);
      _questionNumber++;
    }else{
      bool completed = true;
      return completed;
    }
  }
  String getQuestionText(){
    return _questionList[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionList[_questionNumber].questionAnswer;
  }
  int startOver(){
    return _questionNumber = 0;
  }
}