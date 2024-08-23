import 'package:flutter/material.dart';
import 'package:quiz_app_clone/utils/color_constants.dart';
import 'package:quiz_app_clone/utils/image_constants.dart';
import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: _buildAppBarSection(),
      body: Column(
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
                mainAxisExtent: 170,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: QuizDatabase.quizList.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.menu_book_rounded,
                      size: 80,
                      color: Colors.deepOrange[300],
                    ),
                    Text(
                      QuizDatabase.quizList[index]["name"],
                      style: TextStyle(
                        color: ColorConstants.fontWhite,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Text(
                      "${QuizDatabase.quizList[index]["list".length]} questions",
                      style: TextStyle(
                        color: ColorConstants.fontWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
            "Hi, Anna",
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
}
