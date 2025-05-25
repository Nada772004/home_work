import 'package:quizz_app/models/question_model.dart';

class QuestionManager {
  final List<QuestionModel> questions;
  QuestionManager(this.questions);
  updateQuestion(QuestionModel question, String selectedAnswer) {
    question.selectedAnswer = selectedAnswer;
    var itemIndex = questions.indexOf(question);
    questions.remove(question);
    questions.insert(itemIndex, question);
  }
}
