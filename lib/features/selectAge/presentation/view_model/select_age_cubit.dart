import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:workify_user/features/login/data/repos/login_repos.dart';
import 'package:workify_user/features/login/presentation/view_model/login_states.dart';
import 'package:workify_user/features/selectAge/data/repos/select_age_repos.dart';
import 'package:workify_user/features/selectAge/presentation/view_model/select_age_states.dart';
import '../../../../main_importants.dart';


class SelectAgeCubit extends Cubit<SelectAgeStates> {
  SelectAgeCubit(this.selectAgeRepo) : super(SelectAgeInitState());

  static SelectAgeCubit get(context) => BlocProvider.of(context);


  SelectAgeRepo? selectAgeRepo;

  int currentValue = 20;




}
