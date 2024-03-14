     import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void showTopNotFilledToast(BuildContext context) {
  return showTopSnackBar(
      Overlay.of(context),
      Center(
        child: Container(
          width: 390.w * 0.9,
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.r),
            color: AppColors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Material(
                    color: Colors.transparent,
                    child: Text("Please try again, the text not be  empty", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.white,fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      animationDuration: const Duration(milliseconds: 1000),
      displayDuration: const Duration(milliseconds: 800));
}
                   