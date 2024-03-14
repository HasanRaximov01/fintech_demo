import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SetupDebitCardPage extends StatefulWidget {
  const SetupDebitCardPage({super.key});

  @override
  State<SetupDebitCardPage> createState() => _SetupDebitCardPageState();
}

class _SetupDebitCardPageState extends State<SetupDebitCardPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5.h,),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(Assets.setupDebitLine,
                 fit: BoxFit.fitWidth,
                 width: 430,
                  )
                , Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(Assets.setupDebitYellowCard)),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(Assets.setupDebitBlueCard)),
              ],),
            ),
            SizedBox(height: 30.h,),
            Text("Setup Debit Card",style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),),
            Text("Classic and iconic. The original. Make it yours with a custom drawing or stamp.",
                 textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 40.h,),

            GestureDetector(
              onTap: (){ 

                
                context.pushReplacement("/select_color");
              },
              child: Container(
                alignment: Alignment.center,
                 height:60.h ,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.black,),
               margin: EdgeInsets.symmetric(horizontal: 20.w),
                 width: 360.w,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text("Start",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
                    SizedBox(width: 10.w,),
                    Icon(Icons.arrow_forward,size: 26.sp,color: AppColors.white,)
                   ],
                 ),),
            ),
             SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}