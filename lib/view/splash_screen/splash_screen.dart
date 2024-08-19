import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/utils/image_constants.dart';
import 'package:quiz_app_clone/view/category_screen/category_screen.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';

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
            builder: (context) => CategoryScreen(),
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
            ImageConstants.LOGO,
            height: 180,
            width: 200,
          ),
          Text(
            "Quiz App",
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 40,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}
