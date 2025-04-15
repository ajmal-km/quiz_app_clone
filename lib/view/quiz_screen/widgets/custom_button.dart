import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPressed, required this.label}) : super(key: key);

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: onPressed,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorConstants.blue,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Text(
            label,
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
}
