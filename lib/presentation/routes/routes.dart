import 'package:fintech_demo/presentation/pages/choose_preference_card/view/choose_card_page.dart';
import 'package:fintech_demo/presentation/pages/debit_card/view/debit_card_page.dart';
import 'package:fintech_demo/presentation/pages/onboarding/view/onboarding_page.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/select_color_card_page.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/select_design_card_page.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/components/setup_confirm_name.dart';
import 'package:fintech_demo/presentation/pages/setup_debit_card/view/setup_debit_page.dart';
import 'package:fintech_demo/presentation/pages/splash/view/splash_page.dart';

import 'package:go_router/go_router.dart';

final router=GoRouter(routes: [
  GoRoute(path: '/',
  name: '/',
  builder: (context, state) =>const SplashPage(),
   
  ),
  GoRoute(path: '/onboarding',
  name: '/onboarding',
  builder: (context, state) =>const OnboardingPageView(),
   
  ),
   GoRoute(path: '/setup_debit',
  name: '/setup_debit',
  builder: (context, state) =>const SetupDebitCardPage(),
   
  ),
  GoRoute(path: '/select_color',
  name: '/select_color',
  builder: (context, state) =>const SelectColorCardPage(),
   
  ),
   GoRoute(path: '/select_design',
  name: '/select_design',
  builder: (context, state) =>const SelectDesignCardPage()
  
  
  ,),
   GoRoute(path: '/confirm_name/:image',
  name: '/confirm_name',
  builder: (context, state) => SetupConfirmName(image: state.pathParameters['image']??'',)
  
  
  ,),
  GoRoute(path: '/choose_card_preference/:image/:firstName/:lastName',
  name: '/choose_card_preference',
  builder: (context, state) => ChooseCardPreferencePage(image: state.pathParameters['image']??'',lastName:state.pathParameters['lastName']??'' ,firstName: state.pathParameters['firstName']??'',)
  
  
  ,),
   
 GoRoute(path: '/debit_card/:image/:lastName/:firstName',
  name: '/debit_card',
  builder: (context, state) => DebitCardPage(
    image: state.pathParameters["image"]??"",
  lastName: state.pathParameters["lastName"]??"",
  firstName: state.pathParameters["firstName"]??"",
  )
 )
  
  
]);