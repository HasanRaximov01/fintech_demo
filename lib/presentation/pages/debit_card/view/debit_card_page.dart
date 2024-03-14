import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/generated/assets.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DebitCardPage extends StatefulWidget {
  const DebitCardPage({super.key,required this.image,required this.firstName,required this.lastName});
final  String image;
final String firstName;
final String lastName;

  @override
  State<DebitCardPage> createState() => _DebitCardPageState();
}

class _DebitCardPageState extends State<DebitCardPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Setup Card",
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Debit cash card is ready to use!",style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
            
            //  Container(
                            
            //                 padding: EdgeInsets.symmetric(horizontal: 10.w,),
            //               width: 398,
            //               height: 230.h,
            //               decoration: BoxDecoration(
            //                  borderRadius: BorderRadius.circular(20.r),
            //               color: context.read<CardSetupCubit>().state.color,
            //               ),
                                  
            //                 child: Stack(
            //                   children: [
                               
                           
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                        children: [
            //                          Text("Debit",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
            //                    widget.image!="null" ?   Image.asset(widget.image,height: 60.h,width: 80.w,):const SizedBox()
                                 
            //                        ],
            //                      ),
                                
            //                      Align(alignment: Alignment.topCenter,
            //                      child: Image.asset(Assets.coinSelectDesign,height: 120.h,),),
                                 
                                 
            //                  Positioned(
            //                 bottom: 40.h,
            //                  child: Align(
            //                   alignment: Alignment.bottomCenter,
            //                   child: Text("5608 3273 0900 0222",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)),
            //                ),
            //              Padding
            //                 (
            //                   padding: EdgeInsets.only(bottom: 10.h),
            //                   child: Align(
            //                     alignment: Alignment.bottomCenter,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                       Text("${widget.firstName} ${widget.lastName}",style: Theme.of(context).textTheme.titleLarge
            //                       !.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),),
                              
            //                       Text("03/24",style: Theme.of(context).textTheme.titleLarge
            //                       !.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)
            //                     ],),
            //                   ),
            //                 ),             
            //                   ],
            //                 ),
            //                            ),
            //                             Spacer(),
SizedBox(height: 100.h,),

 Padding(
  padding: EdgeInsets.symmetric(horizontal: 20.w),
   child: Stack(
     children: [
   
       CreditCardWidget(
        floatingConfig: FloatingConfig(
          isGlareEnabled: false,
          isShadowEnabled: false
          
        ),
        backgroundImage: "assets/tempImages/background_image.png",

        
        
        isHolderNameVisible: true,
         
        customCardTypeIcons: [
        
         CustomCardTypeIcon(cardType:CardType.visa , cardImage: Image.asset(Assets.chooseCardVisaCard)),
         CustomCardTypeIcon(cardType:CardType.visa , cardImage: Image.asset(Assets.spWhiteLine)),
         CustomCardTypeIcon(cardType:CardType.visa , cardImage: Image.asset(Assets.setupCoin)),
        ],
        padding: 0,
   

      
        
        obscureInitialCardNumber: true,
            cardNumber:"    ",
            
            textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600,color: AppColors.cardBorderNeutral300),
          
             cardBgColor: AppColors.cardPrimary700,
               bankName: "",
               
             chipColor: AppColors.cardNeutral100,
             isChipVisible: false,
            cardType: widget.image==Assets.chooseCardVisaCard? CardType.visa:CardType.mastercard,
            obscureCardNumber: false,
            obscureCardCvv: false,
            
         
            cardHolderName: "${widget.firstName} ${widget.lastName}",
            cvvCode: "556",
            showBackView: false, //true when you want to show cvv(back) view
            onCreditCardWidgetChange: (CreditCardBrand brand) {}, 
            expiryDate: '  03/24', // Callback for anytime credit card brand is changed
          ).animate().fade().scale(duration: Duration(milliseconds: 500)),
    
     ]
   ),
 ),Spacer(),
                                        GestureDetector(
                  onTap: (){
                  
        
        
                   
                  },
                  child: Container(
                    alignment: Alignment.center,
                     height:60.h ,
                     width: 360.w,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: AppColors.black,),
                   margin: EdgeInsets.symmetric(horizontal: 20.w),
                     
                     child: Text("Finish",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white,fontWeight: FontWeight.w600),)
                ),),
                
                 SizedBox(height: 10.h,)
        
                      
          ],
        ),
      ),
    );
  }
}