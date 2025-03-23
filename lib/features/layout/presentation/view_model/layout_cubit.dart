 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout_states.dart';


class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  static int pageIndex = 0;

  List screens = [
    Text("1",style: TextStyle(color: Colors.red),),
    Text("2"),
    Text("3"),
    Text("4"),
    Text("5"),
    // const HomeView(),
    // const NotificationsView(),
    // const SearchView(),
    // const AdvertisementsView(),
    // const ProfileView(),

  ];



  changeBottomNav(index ,context) {
    pageIndex = index;
    emit(ChangeBottomNavState());
  }


}