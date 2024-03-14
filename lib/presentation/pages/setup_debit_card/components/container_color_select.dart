import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerSelectColor extends StatefulWidget {
  const ContainerSelectColor({super.key,required this.color,required this.function,required this.isSelected, this.image});
final  Color color;
final String? image;
final bool isSelected;
final Function () function;

  @override
  State<ContainerSelectColor> createState() => _ContainerSelectColorState();
}

class _ContainerSelectColorState extends State<ContainerSelectColor> {
  @override
  Widget build(BuildContext context) {
    return     GestureDetector(
       onTap: widget.function,
      child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        border: Border.all(width: 2.w,color: widget.isSelected? AppColors.black:AppColors.cardBorderNeutral300)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Container(
                          height: 55.h,
                        
                           width: 55.w,
                          decoration: BoxDecoration(
                           
                          color: widget.color,
                          
                        ),
                          child: widget.image==null?null:Align(
                          alignment: Alignment.topRight,
                            child: Image.asset(widget.image!)),),
                      ),
                    ),
    )
              ;
  }
}