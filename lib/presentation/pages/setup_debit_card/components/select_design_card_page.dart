import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/container_color_select.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SelectDesignCardPage extends StatefulWidget {
  const SelectDesignCardPage({super.key,});

  @override
  State<SelectDesignCardPage> createState() => _SelectDesignCardPageState();
}

class _SelectDesignCardPageState extends State<SelectDesignCardPage> {
 int currentIndex=0;
List<String?> images=[Assets.coinSelectDesign,Assets.setupCoinPink,Assets.setupCardDesignStar,Assets.setupCardDesignLine,null];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Setup Card",
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text("Select design\n option for your card",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),)
             ,
              SizedBox(height: 15.h,),
              Container(
  
                padding: EdgeInsets.symmetric(horizontal: 10.w,),
        
                child: Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 10.h),
                      child: Text("Debit",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
                    ),
                     currentIndex!=4? Align(
                      alignment: Alignment.topCenter,
                      child:
                       Image.asset(images[currentIndex]!,height: 140.h,fit: BoxFit.fitHeight,)):SizedBox(),
                  ],
                ),
              width: 398,
              height: 230.h,
              decoration: BoxDecoration(
              color: context.read<CardSetupCubit>().state.color,
              borderRadius: BorderRadius.circular(16.r)),
             ).animate().fade().scale(duration: const Duration(milliseconds: 500)),
              SizedBox(height: 60.h,),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for(int i=0;i<5;i++)
                    ContainerSelectColor(color: context.read<CardSetupCubit>().state.color, isSelected: currentIndex==i,function: (){currentIndex=i;
                    setState(() {
                      
                    });},image: images[i],)
                  ],
                 ),
               ),
              const  Spacer(),
               GestureDetector(
                onTap: (){
                
      
                   context.pushNamed('/confirm_name',pathParameters: {'image':images[currentIndex]??''});
                 
                },
                child: Container(
                  alignment: Alignment.center,
                   height:60.h ,
                   width: 360.w,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.black,),
                 margin: EdgeInsets.symmetric(horizontal: 20.w),
                   
                   child: Text("Continue",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)
              ),),
              
               SizedBox(height: 10.h,)
              
              ])))
    );
  }
}