import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:fintech_demo/presentation/pages/choose_preference_card/components/card_select_wigdet.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/top_snackbar.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChooseCardPreferencePage extends StatefulWidget {
   const ChooseCardPreferencePage({super.key,required this.image,required this.firstName,required this.lastName});
 final String ?image;
 final String lastName;
 final String firstName;

 

  @override
  State<ChooseCardPreferencePage> createState() => _ChooseCardPreferencePageState();
}

class _ChooseCardPreferencePageState extends State<ChooseCardPreferencePage> {
  int ? currentIndex;
   List <String> imagesCard=[Assets.chooseCardmasterCard,Assets.chooseCardVisaCard];
    List<String> titles=["MasterCard","Visa"];
    List<String> subtitles=["Free","\$5.00 per month"];

  @override
   
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Setup Card",
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Choose your card preference",
            textAlign: TextAlign.center,
             
         
             style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),),

           SizedBox(height: 100.h,),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Container(
                  
                                          
                        width: 398,

                   alignment: Alignment.center,
                  color: context.read<CardSetupCubit>().state.color
               ,   child: Stack(
                    children: [
           Opacity(
                        opacity: 0.15,
                        child: Container(
                          
                          padding: EdgeInsets.symmetric(horizontal: 10.w,),
                        width: 398,
                        height: 230.h,
                        decoration: BoxDecoration(
                        color: context.read<CardSetupCubit>().state.color,
                        ),
                                
                          child: Stack(
                            children: [
                             
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h),
                                child: Text("Debit",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
                              ),
                                Align(
                                alignment: Alignment.topCenter,
                                child:
                             widget.image!="null" ?   Image.asset(widget.image??"",height: 140.h,):const SizedBox())
                         ,  Positioned(
                          bottom: 40.h,
                           child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("5608 3273 0900 0222",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)),
                         ),
                       Padding
                          (
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("${widget.firstName} ${widget.lastName}",style: Theme.of(context).textTheme.titleLarge
                                !.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
                            
                                Text("03/24",style: Theme.of(context).textTheme.titleLarge
                                !.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)
                              ],),
                            ),
                          ),             
                            ],
                          ),
                                     ),
                      ),
              Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                          child: Align(alignment: Alignment.topRight,child: Image.asset(Assets.choosePreferenceRectangle,height: 30.h,width: 60.w,),)),
                             currentIndex==1?  
                               Padding(
                           padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                          child: Align(alignment: Alignment.topRight,child: Image.asset(Assets.chooseCardVisaCard,height: 30.h,width: 60.w,),)):SizedBox.shrink(),
                         currentIndex==0?         Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                          child: Align(alignment: Alignment.topRight,child: Image.asset(Assets.chooseCardmasterCard,height: 30.h,width: 60.w,),)):SizedBox.shrink(),
                    ],
                  ),
                ).animate().fade().scale(duration: Duration(milliseconds: 500)),
              ),

             Spacer(),
               for(int index=0;index<2;index++)
CardSelectWidget(function: (
  
){
  currentIndex=index;
  setState(() {
    
  });
  
}, image: imagesCard[index], subtitle: subtitles[index], title: titles[index], isSelected: currentIndex==index),
 SizedBox(height: 20.h,),
GestureDetector(
                onTap: (){
                  if (currentIndex==null) {

                   showTopNotFilledToast(context);
                  }
                else{
                context.pushNamed('/debit_card',pathParameters: {'image':imagesCard[currentIndex??1],
                'firstName':widget.firstName,
                'lastName':widget.lastName
                });}
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

        )),
    );
  }
}