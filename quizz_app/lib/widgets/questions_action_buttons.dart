import 'package:flutter/material.dart';
import 'package:quizz_app/styles/app_colors.dart';

class QuestionsActionbuttons extends StatelessWidget {
  const QuestionsActionbuttons({
    super.key, required this.onBackPressed, required this.onNextPressed,
  });
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ElevatedButton(
      onPressed: () {
        onBackPressed();
        // Handle back action
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.darkSecondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text('Back',
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w500,),
        ),
      ),
      ElevatedButton(
      onPressed: () {
        onNextPressed();
        // Handle next action
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.darkSecondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text('Next',
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w500,),
      ),
      ),
    ],
    );
  }
}