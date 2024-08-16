import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.rightAnsCount, required this.wrongAnsCount});

  final int rightAnsCount;
  final int wrongAnsCount;

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
                    const EdgeInsets.symmetric(horizontal: 7.5, vertical: 10),
                child: Icon(
                  Icons.star_purple500_sharp,
                  color: Colors.amber,
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
                "${rightAnsCount} / ${QuizDatabase.questions.length}",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1.7,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Correct Answers: $rightAnsCount",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Wrong Answers: $wrongAnsCount",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Skipped Questions: 0",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          );
  }

  Widget _buildRestartButtonSection(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(25, 24, 25, 0),
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
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 2.8, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.replay,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Restart",
                      style: TextStyle(
                        color: Colors.white,
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
    if (rightAnsCount > QuizDatabase.questions.length / 2) {
      return "Congratulations !";
    } else {
      return "Better Luck Next Time 👍";
    }
  }
}
