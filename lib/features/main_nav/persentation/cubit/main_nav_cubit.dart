import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'main_nav_state.dart';
@injectable
class MainNavCubit extends Cubit<MainNavState> {
  MainNavCubit() : super(MainNavInitial());
    int selectedTab = 0;
  void selectTab(int index) {
    selectedTab = index;
    emit(MainNavTabChanged(index));
  }
}
