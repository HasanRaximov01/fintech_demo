import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/container_color_select.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SelectColorCardPage extends StatefulWidget {
  const SelectColorCardPage({super.key});

  @override
  State<SelectColorCardPage> createState() => _SelectColorCardPageState();
}

class _SelectColorCardPageState extends State<SelectColorCardPage> {

 int currentIndex=0;
 List<Color> colors=[AppColors.cardPrimary700,AppColors.black,AppColors.cardSucces300,AppColors.cardSecondary,AppColors.cardNeutral100];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
    
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:  Text("Setup Card",
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text("Select color\n option for your card",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),)
             ,
              SizedBox(height: 15.h,),
              Container(
        
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                child: Text("Debit",style: Theme.of(context).textTheme.titleLarge!.copyWith(color:currentIndex<=2? AppColors.white:AppColors.black,fontWeight: FontWeight.w600),),
              width: 398,
              height: 230.h,
              decoration: BoxDecoration(color: colors[currentIndex],
              borderRadius: BorderRadius.circular(16.r)),
             ).animate().fade().scale(duration: const Duration(milliseconds: 600,)),
              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   
                 for (int index=0;index<5;index++)
                 ContainerSelectColor(color: colors[index], function:(){
                   currentIndex=index;
                   setState(() {
                     
                   });
                 } , isSelected:currentIndex==index )
                 ],
                ),
              )
             ,  const Spacer()
             ,GestureDetector(
                onTap: (){
                  context.read<CardSetupCubit>().changeColor(colors[currentIndex]);
                  context.push("/select_design");
                 
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
            ],
          ),
        ),
      ),
    );
  }
}