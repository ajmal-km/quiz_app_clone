import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../result_screen/result_screen.dart';
import '../../utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'widgets/question_widget.dart';
import 'package:lottie/lottie.dart';
import 'widgets/custom_button.dart';
import 'widgets/options_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.questionList});

  final List questionList;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  double value = 0;

  @override
  void initState() {
    widget.questionList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        surfaceTintColor: ColorConstants.mainBlack,
        leadingWidth: 60,
        toolbarHeight: 80,
        titleSpacing: 10,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: ColorConstants.fontWhite,
          ),
        ),
        centerTitle: true,
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 270,
              child: LinearProgressIndicator(
                minHeight: 15,
                backgroundColor: ColorConstants.containerGrey,
                value: (questionIndex + 1) / widget.questionList.length,
                color: ColorConstants.blue,
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Text(
            "${questionIndex + 1}/${widget.questionList.length}",
            style: TextStyle(
              color: ColorConstants.blue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                QuestionWidget(
                    content: widget.questionList[questionIndex]["question"]),
                selectedAnswerIndex ==
                        widget.questionList[questionIndex]["answer"]
                    ? LottieBuilder.asset("assets/animations/popper.json",
                        width: double.infinity, height: 300)
                    : SizedBox(),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: List.generate(
                4,
                (index) => OptionsCard(
                  borderColor: _getColor(index),
                  option: widget.questionList[questionIndex]["options"][index],
                  selectedIcon: _getOptionIcon(index),
                  onOptionTap: () {
                    if (selectedAnswerIndex == null) {
                      setState(() {
                        selectedAnswerIndex = index;
                        if (selectedAnswerIndex ==
                            widget.questionList[questionIndex]["answer"]) {
                          rightAnswerCount++;
                        } else {
                          wrongAnswerCount++;
                        }
                      });
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: selectedAnswerIndex == null
          ? null
          : CustomButton(
              label: "Next",
              onPressed: () {
                setState(() {
                  selectedAnswerIndex = null;
                  if (questionIndex < widget.questionList.length - 1) {
                    questionIndex++;
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          rightAnsCount: rightAnswerCount,
                          wrongAnsCount: wrongAnswerCount,
                          questions: widget.questionList,
                        ),
                      ),
                    );
                  }
                });
              },
            ),
    );
  }

  IconData _getOptionIcon(int index) {
    if (selectedAnswerIndex != null) {
      if (selectedAnswerIndex == index) {
        if (selectedAnswerIndex ==
            widget.questionList[questionIndex]["answer"]) {
          return FontAwesomeIcons.circleCheck;
        } else {
          return FontAwesomeIcons.circleXmark;
        }
      }
      if (index == widget.questionList[questionIndex]["answer"]) {
        return FontAwesomeIcons.circleCheck;
      }
    }
    return FontAwesomeIcons.circle;
  }

  Color _getColor(int index) {
    if (selectedAnswerIndex != null) {
      if (selectedAnswerIndex == index) {
        if (selectedAnswerIndex ==
            widget.questionList[questionIndex]["answer"]) {
          return Colors.green;
        } else {
          return Colors.red;
        }
      }
      if (index == widget.questionList[questionIndex]["answer"]) {
        return Colors.green;
      }
    }
    return Colors.grey.shade600;
  }
}
