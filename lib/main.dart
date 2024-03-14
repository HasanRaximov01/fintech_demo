import 'package:fintech_demo/presentation/manager/locator.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:fintech_demo/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async{
  await ScreenUtil.ensureScreenSize();
setupConfiguration();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
    late CardSetupCubit _cardSetupCubit;
     
      @override
  void initState() {
    _cardSetupCubit=getIt<CardSetupCubit>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,

      child:MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>_cardSetupCubit)
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: router,
          ),
      ),
      
    );
     
  }
}

