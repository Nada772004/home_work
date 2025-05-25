import 'package:flutter/material.dart';
import 'package:quizz_app/models/question_manager.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_text_styles.dart';
import 'package:quizz_app/widgets/question_header.dart';
import 'package:quizz_app/widgets/question_options.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question, required this.index, required this.questionManager});

  final QuestionModel question;
  final int index;
  final QuestionManager questionManager;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(questionModel: question, index: index),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: Text(
            question.question,
            style: AppTextStyles.medium24(color: Colors.white),
          ),
        ),
        SizedBox(height: 32),
        QuestionOptions(
          options: question.options,
          questionManager: questionManager,
          currentIndex: index,
        ),
      ],
    );
  }
}
