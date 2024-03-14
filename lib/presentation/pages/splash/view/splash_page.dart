import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1200,),(){
      context.pushReplacement("/onboarding",);

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: SafeArea(child: Padding(
  padding:  EdgeInsets.symmetric(horizontal: 20.w),
  child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
     mainAxisSize: MainAxisSize.min,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
           
           height: 600.h,
          
          color: AppColors.splashTopContainer,
          child: Stack(
          
            children: [
        
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  Assets.spTopLine
                ),
              )
              , Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  Assets.spWhiteLine
                ),
              ),
              Align(alignment: Alignment.bottomLeft,
              child: Image.asset(Assets.spCoin,
               height: 250.h,
               width: 300.w,
              ),),
               Align(alignment: Alignment.center,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Image.asset(Assets.splashLogo,height: 70.h,width: 100,),
                  Text("coinstar",style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),)
                ],
               ),)
            ],
        
          ),
        ),
      ),
        SizedBox(height: 20.h,),
      ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
          color: AppColors.splashBotContainer,
          child: Image.asset(Assets.spBotline),
            
          
         
        ),
      )
    ],
  ),
)),
    );
  }
}