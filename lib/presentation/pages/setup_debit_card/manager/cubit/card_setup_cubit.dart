import 'package:bloc/bloc.dart';
import 'package:fintech_demo/config/constants/app_colors.dart';
import 'package:flutter/material.dart';


part 'card_setup_state.dart';

class CardSetupCubit extends Cubit<CardSetupState> {
     
CardSetupCubit():super(CardSetupState(AppColors.white));
  void changeColor(Color color){
    emit(CardSetupState(color));
  }
}
