import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/widgets/options_card.dart';
import 'package:quiz_app_clone/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: _buildAppBarSection(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            _buildQuestionSection(),
            SizedBox(height: 10),
            _buildOptionSelectionSection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildNextButtonSection(context),
    );
  }

  AppBar _buildAppBarSection() {
    return AppBar(
      backgroundColor: ColorConstants.mainBlack,
      surfaceTintColor: ColorConstants.mainBlack,
      actions: <Widget>[
        Text(
          "${questionIndex + 1}/${QuizDatabase.questions.length}",
          style: TextStyle(
            color: ColorConstants.blue,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  Widget _buildOptionSelectionSection() {
    return Column(
      children: List.generate(
        4,
        (index) => OptionsCard(
          borderColor: _getColor(index),
          questionIndex: questionIndex,
          optionIndex: index,
          selectedIcon: _getOptionIcon(index),
          onOptionTap: () {
            if (selectedAnswerIndex == null) {
              setState(() {
                selectedAnswerIndex = index;
                if (selectedAnswerIndex ==
                    QuizDatabase.questions[questionIndex]["answer"]) {
                  rightAnswerCount++;
                } else {
                  wrongAnswerCount++;
                }
              });
            }
          },
        ),
      ),
    );
  }

  Widget? _buildNextButtonSection(BuildContext context) {
    return selectedAnswerIndex == null
        ? null
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(13),
              onTap: () {
                setState(() {
                  selectedAnswerIndex = null;
                  if (questionIndex < QuizDatabase.questions.length - 1) {
                    questionIndex++;
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          rightAnsCount: rightAnswerCount,
                          wrongAnsCount: wrongAnswerCount,
                        ),
                      ),
                    );
                  }
                });
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorConstants.blue,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: ColorConstants.fontWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ),
          );
  }

  Widget _buildQuestionSection() {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: ColorConstants.containerGrey,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            QuizDatabase.questions[questionIndex]["question"],
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        selectedAnswerIndex == QuizDatabase.questions[questionIndex]["answer"]
            ? LottieBuilder.asset("assets/animations/popper.json",
                width: double.infinity, height: 300)
            : SizedBox(),
      ],
    );
  }

  IconData _getOptionIcon(int index) {
    if (selectedAnswerIndex != null) {
      if (selectedAnswerIndex == index) {
        if (selectedAnswerIndex ==
            QuizDatabase.questions[questionIndex]["answer"]) {
          return Icons.check_box_rounded;
        } else {
          return Icons.disabled_by_default_rounded;
        }
      }
      if (index == QuizDatabase.questions[questionIndex]["answer"]) {
        return Icons.check_box_rounded;
      }
    }
    return Icons.check_box_outline_blank_rounded;
  }

  Color _getColor(int index) {
    if (selectedAnswerIndex != null) {
      if (selectedAnswerIndex == index) {
        if (selectedAnswerIndex ==
            QuizDatabase.questions[questionIndex]["answer"]) {
          return Colors.green;
        } else {
          return Colors.red;
        }
      }
      if (index == QuizDatabase.questions[questionIndex]["answer"]) {
        return Colors.green;
      }
    }
    return Colors.grey.shade600;
  }
}
