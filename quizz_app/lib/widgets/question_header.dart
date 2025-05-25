import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_text_styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({super.key, required this.questionModel, required this.index});
  final QuestionModel questionModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFF8D83FF) /* SECONDARY-VIOLET */,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFB8B2FF) /* OUTLINE-VIOLET */,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          SvgPicture.asset(getImage),
          Text(
            'Question ${index+1} ',
            style: AppTextStyles.regular12(color: Colors.white),
          ),
        ],
      ),
    );
  }

  String get getImage {
    switch(index) {
      case 0:
        return Assets.imagesQ1;
      case 1:
        return Assets.imagesQ2;
      case 2:
        return Assets.imagesQ3;
      case 3:
        return Assets.imagesQ4;
      default:
        return Assets.imagesQ1;
    }
  
  }
}
