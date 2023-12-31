import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors.dart';
class CustomRoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const CustomRoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 200,
      
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    color: AppColors.whiteColor,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor),
                  )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: AppColors.buttoncolor),
      ),
    );
  }
}
