import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSelectWidget extends StatelessWidget {
  const CardSelectWidget({super.key,required this.function,required this.image,required this.subtitle,required this.title,required this.isSelected});
   final String image;
   final bool isSelected;
   final String title;
   final String subtitle;
   final Function() function;

  @override
  Widget build(BuildContext context) {
    return      Column(
      children: [
        SizedBox(height: 30.h,),
        GestureDetector(
        
         onTap: function,      child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w),
                     
                       width: 398,
                      decoration: BoxDecoration(
                        color: AppColors.cardBorderNeutral300,
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(image,height: 60.h,width: 60.h,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
                         Text(subtitle,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.confirmNeutral600),)
                          ],
                         ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2.w)
                            ),
                            child: Container(
                              
                               height: 12.h,
                               width:12.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isSelected? AppColors.black:null,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
        ),
      ],
    )
             ;
  }
}