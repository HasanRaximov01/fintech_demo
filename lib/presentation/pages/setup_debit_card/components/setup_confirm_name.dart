import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/top_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SetupConfirmName extends StatefulWidget {
  const SetupConfirmName({super.key,required this.image});
  final String image;

  @override
  State<SetupConfirmName> createState() => _SetupConfirmNameState();
}

class _SetupConfirmNameState extends State<SetupConfirmName> {
 TextEditingController? firstNameController;
 TextEditingController? lastNameController;
  @override
  void initState() {
    firstNameController=TextEditingController();
    lastNameController=TextEditingController();
    super.initState();
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:  Text("Setup Card",
      style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Please confirm your name.",
               textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),)
            ,
             SizedBox(height: 5.h,),
             Text("First name",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.confirmNeutral700),)
             ,
             SizedBox(height: 5.h,),
              TextField(
                controller: firstNameController,
                textInputAction: TextInputAction.next,
                style: Theme.of(context).textTheme.titleLarge,
                decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.confirmNeutral600)
                   )
                ),
              ),
              SizedBox(height: 20.h,),
               Text("Last name",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.confirmNeutral700),)
            ,
              TextField(
                controller: lastNameController,
                style: Theme.of(context).textTheme.titleLarge,
                decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.confirmNeutral600)
                   ))
              ),
              Spacer(),
  Text("Please, note that it should be your legal first and last according to your legal documents. Card with name might help you while booking hotels and automobiles abroad. "),
    SizedBox(height: 30.h,),
      GestureDetector(
                onTap: (){
                   debugPrint(firstNameController!.text);
                   debugPrint(lastNameController!.text);
                   if (firstNameController!.text==""||lastNameController!.text=="") {
                  debugPrint("!");
                showTopNotFilledToast(context);
                }

               
                else{
                   context.pushNamed('/choose_card_preference',pathParameters: {'image':widget.image,
                       'firstName':firstNameController
                       !.text,
                       'lastName':lastNameController!.text
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
            ]),
        ))
    );
  }
}