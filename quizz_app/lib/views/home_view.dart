import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/styles/app_text_styles.dart';
import 'package:quizz_app/views/questions_view.dart';
import 'package:quizz_app/widgets/custom_background_container.dart';
import 'package:quizz_app/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: CustomBackgroundContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text('Good morning,', style: AppTextStyles.regular16()),
                SizedBox(height: 8),
                Text('New topic is waiting', style: AppTextStyles.medium18()),

                Expanded(child: SizedBox()),
                CustomButton(
                  text: 'Start Quiz',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionsView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
