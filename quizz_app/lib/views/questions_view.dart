import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizz_app/models/question_manager.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/styles/app_colors.dart';
import 'package:quizz_app/widgets/custom_background_container.dart';
import 'package:quizz_app/widgets/question_item.dart';
import 'package:quizz_app/widgets/questions_action_buttons.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  QuestionManager questionManager = QuestionManager(questions);
  PageController pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {
      log(pageController.page.toString());
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomBackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 30),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: questionManager.questions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: QuestionItem(
                          key: ValueKey(0),
                          index: index,
                          question: questionManager.questions[index],
                          questionManager: questionManager,
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: QuestionsActionbuttons(
                    onBackPressed: () {
                      setState(() {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      });
                    },
                    onNextPressed: () {
                      if (questionManager
                          .questions[pageController.page!.toInt()]
                          .selectedAnswer
                          .isNotEmpty) {
                        if (pageController.page!.toInt() ==
                            questionManager.questions.length - 1) {
                          log(questionManager.questions.toString());
                          // Handle quiz completion
                        } else {
                          setState(() {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          });
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please select an answer'),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
