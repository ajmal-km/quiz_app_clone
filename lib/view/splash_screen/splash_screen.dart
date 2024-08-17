import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
    ).then(
      (value) {
        QuizDatabase.questions.shuffle();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: _buildSplashLogoSection(),
    );
  }

  Widget _buildSplashLogoSection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://i.pinimg.com/564x/c7/38/85/c73885828826baf41c9bdae6aadbff85.jpg",
            height: 180,
            width: 200,
          ),
          Text(
            "Quiz App",
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 40,
              letterSpacing: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}
