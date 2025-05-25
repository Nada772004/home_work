import 'package:flutter/material.dart';
import 'package:quizz_app/models/question_manager.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/widgets/option_item.dart';

class QuestionOptions extends StatefulWidget {
  const QuestionOptions({
    super.key,
    required this.options,
    required this.questionManager, required this.currentIndex,
  });

  final List<String> options;
  final QuestionManager questionManager;
  final int currentIndex ;

  @override
  State<QuestionOptions> createState() => _QuestionOptionsState();
}

class _QuestionOptionsState extends State<QuestionOptions> with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.options.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: OptionItem(
            option: widget.options[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.questionManager.updateQuestion(
  widget.questionManager.questions[widget.currentIndex],
  widget.options[index],
);

              },
          ),
        );
      },
    );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  final String option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedCrossFade(
        firstChild: InActiveOptionItem(option: option, onTap: onTap),
        secondChild: ActiveOptionItem(option: option),
        crossFadeState:
            isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 300),
      ),
    );
  }
}
