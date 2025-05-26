import 'package:equatable/equatable.dart';

class QuestionModel extends Equatable {
  final String question;
  final List<String> options;
  final String correctAnswer;
  String selectedAnswer;

  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.selectedAnswer = '',
  });

  @override
  List<Object?> get props => [question, options, correctAnswer];

  @override
  String toString() {
    // TODO: implement toString
    return 'QuestionModel{question: $question, options: $options, correctAnswer: $correctAnswer, selectedAnswer: $selectedAnswer}';
  }
}

List<QuestionModel> questions = [
  QuestionModel(
    question: 'What is the capital of France?',
    options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
    correctAnswer: 'Paris',
  ),
  QuestionModel(
    question: 'What is the largest planet in our solar system?',
    options: ['Earth', 'Mars', 'Jupiter', 'Saturn'],
    correctAnswer: 'Jupiter',
  ),
  QuestionModel(
    question: 'What is the chemical symbol for gold?',
    options: ['Au', 'Ag', 'Fe', 'Pb'],
    correctAnswer: 'Au',
  ),
  QuestionModel(
    question: 'What is the smallest prime number?',
    options: ['0', '1', '2', '3'],
    correctAnswer: '2',
  ),
];
