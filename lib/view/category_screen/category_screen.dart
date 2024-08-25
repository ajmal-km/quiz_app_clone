import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/utils/image_constants.dart';
import 'package:quiz_app_clone/view/category_screen/widgets/category_grid.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: _buildAppBarSection(),
      body: _buildQuizCategorySection(),
    );
  }

  AppBar _buildAppBarSection() {
    return AppBar(
      toolbarHeight: 85,
      backgroundColor: ColorConstants.mainBlack,
      surfaceTintColor: ColorConstants.mainBlack,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi, User",
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.4,
            ),
          ),
          Text(
            "Let's make this day productive",
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 15.2,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.13,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(ImageConstants.PROFILE_IMG),
        ),
        SizedBox(width: 17)
      ],
    );
  }

  Widget _buildQuizCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, bottom: 15),
          child: Text(
            "Let's play",
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 21,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.2,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: QuizDatabase.quizList.length,
            itemBuilder: (context, index) => CategoryGrid(
              categoryIndex: index,
              title: QuizDatabase.quizList[index]["name"],
              questions: QuizDatabase.quizList[index]["list"],
              image: ImageConstants.categoryImages[index],
              onGridTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                        questionList: QuizDatabase.quizList[index]["list"]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
