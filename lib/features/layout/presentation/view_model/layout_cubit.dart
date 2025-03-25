 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import 'layout_states.dart';


class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  static int pageIndex = 0;

  List screens = [
    const HomeView(),
    Text("2"),
    Text("3"),
    Text("4"),
    ProfileView(),
  ];



  changeBottomNav(index ,context) {
    pageIndex = index;
    emit(ChangeBottomNavState());
  }


}