import 'package:flutter/material.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key,
    required this.questionIndex,
    required this.optionIndex,
    required this.borderColor,
    required this.selectedIcon,
    this.onOptionTap,
  });

  final int questionIndex;
  final int optionIndex;
  final Color borderColor;
  final IconData selectedIcon;
  final void Function()? onOptionTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onOptionTap,
        child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Text(
                QuizDatabase.questions[questionIndex]["options"][optionIndex],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Icon(
                selectedIcon,
                size: 21,
                color: borderColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
