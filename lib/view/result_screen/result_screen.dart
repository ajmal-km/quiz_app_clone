import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.rightAnsCount, required this.wrongAnsCount});

  final int rightAnsCount;
  final int wrongAnsCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int starCount = 0;
  @override
  void initState() {
    starCount = calPercentage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildStarViewSection(),
            _buildScoreViewSection(),
            _buildRestartButtonSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStarViewSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding:
              EdgeInsets.only(right: 9, left: 9, bottom: index == 1 ? 15 : 10),
          child: Icon(
            Icons.star_purple500_sharp,
            color: index < starCount ? Colors.amber : Colors.white38,
            size: index == 1 ? 90 : 60,
          ),
        ),
      ),
    );
  }

  Widget _buildScoreViewSection() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            _getString(),
            style: TextStyle(
              color: Colors.amber,
              fontSize: 32,
              fontWeight: FontWeight.w500,
              letterSpacing: -1,
            ),
          ),
        ),
        Text(
          "${widget.rightAnsCount} / ${QuizDatabase.questions.length}",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 32,
            fontWeight: FontWeight.w500,
            letterSpacing: -1.7,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Correct Answers: ${widget.rightAnsCount}",
          style: TextStyle(
            fontSize: 15.3,
            fontWeight: FontWeight.w600,
            color: ColorConstants.fontWhite,
          ),
        ),
        Text(
          "Wrong Answers: ${widget.wrongAnsCount}",
          style: TextStyle(
            fontSize: 15.3,
            fontWeight: FontWeight.w600,
            color: ColorConstants.fontWhite,
          ),
        ),
      ],
    );
  }

  Widget _buildRestartButtonSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 35, 25, 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: () {
          QuizDatabase.questions.shuffle();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => QuizScreen(),
            ),
          );
        },
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorConstants.fontWhite,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.replay,
                color: ColorConstants.mainBlack,
                size: 26,
              ),
              SizedBox(width: 10),
              Text(
                "Restart",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getString() {
    double scorePercentage =
        (widget.rightAnsCount / QuizDatabase.questions.length) * 100;
    if (scorePercentage >= 50) {
      if (scorePercentage >= 80) {
        return "Congratulations !";
      } else {
        return "Average !";
      }
    }
    return "Better luck next time !";
  }

  int calPercentage() {
    double percentage =
        (widget.rightAnsCount / QuizDatabase.questions.length) * 100;
    if (percentage >= 80) {
      return 3;
    } else if (percentage >= 50) {
      return 2;
    } else if (percentage >= 30) {
      return 1;
    } else {
      return 0;
    }
  }
}
