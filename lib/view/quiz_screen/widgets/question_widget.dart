import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';
    
class QuestionWidget extends StatelessWidget {

  const QuestionWidget({ Key? key, required this.content }) : super(key: key);

  final String content;
  
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 300,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: ColorConstants.containerGrey,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            content,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: ColorConstants.fontWhite,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
  }
}