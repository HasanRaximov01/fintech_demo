import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:fintech_demo/presentation/pages/onboarding/components/onboarding_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});
  

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}
 
class _OnboardingPageViewState extends State<OnboardingPageView> {
   int currentindex=0;
    List<String>titles=["Manage your finances",
     "Control your savings.",
    "Easy banking."];
  PageController ?controller;

  @override
  void initState() {
    controller=PageController(initialPage: 0);
    super.initState();
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Expanded(
            
               
              child: PageView(
                 physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                   currentindex=value;
                   setState(() {
                     
                   });
                },
                controller: controller,
                children: const [
               OnboardingSplashPage(imagePath: Assets.onboardingImg1),
               OnboardingSplashPage(imagePath: Assets.onboardingImg2),
               OnboardingSplashPage(imagePath: Assets.onboardingImg3)
                ],
              ),
            ),
                SizedBox(height: 30.h,),
        Text(titles[currentindex],style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),),
        SizedBox(height: 20.h,),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text("Forget everything you know about the chaotic world of finance. It can be easy.",style: Theme.of(context).textTheme.titleMedium,))
         ,    Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
               child: Row
               (
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[ AnimatedSmoothIndicator( 
                   
                    activeIndex: currentindex,  
                    count: 3,  
                    effect: WormEffect(
                      
                     spacing: 12.w,
                    dotWidth: 27.w,
                    dotHeight: 10.h,
                    strokeWidth: 30.w,
                     activeDotColor: AppColors.black
                     
                   
                    ),  
                 ), 
               
                  GestureDetector(
                    onTap: (){
                      
 if (currentindex==2) {
   context.pushReplacement("/setup_debit");
   
 }
                    
                      controller!.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.bounceOut);
                        setState(() {
                        
                      });
                       
                    },
                    child: CircleAvatar(
                      radius: 28.r,
                      backgroundColor: AppColors.black,
                      child: Icon(Icons.arrow_forward,color: AppColors.white,size: 32.r,),
                    ),
                  )
                          ] ),
             )  
  
          ],
        ),
      ),
    );
  }
}