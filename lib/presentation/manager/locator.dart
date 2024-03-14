import 'package:fintech_demo/presentation/pages/setup_debit_card/manager/cubit/card_setup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
setupConfiguration() async {
 
 getIt.registerFactory<CardSetupCubit>(() =>CardSetupCubit() );


}
