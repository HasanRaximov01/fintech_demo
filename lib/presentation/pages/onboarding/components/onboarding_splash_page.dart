import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingSplashPage extends StatelessWidget {
const OnboardingSplashPage({super.key,required this.imagePath,});
 final String imagePath;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
       
      ],
    );
  }
}