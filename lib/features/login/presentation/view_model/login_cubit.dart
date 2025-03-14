 import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:workify_user/features/login/data/repos/login_repos.dart';
import 'package:workify_user/features/login/presentation/view_model/login_states.dart';
import '../../../../main_importants.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this.loginRepo) : super(LoginInitState());


  var phoneCon = TextEditingController();
  var passwordCon = TextEditingController();
  var emailCon = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  LoginRepo? loginRepo;
  // LoginModel? loginModel;
  bool isPasswordVisible = true;

  changePasswordVisible()
  {
    isPasswordVisible = !isPasswordVisible;
    emit(ChangePasswordVisibleState());
  }

  // Future<void> login({
  //   required String password,
  //   required String phone,
  // }) async {
  //   emit(LoginLoadingState());
  //   var result = await loginRepo!.login(data: {
  //     "password" : password,
  //     "phone":phone,
  //   });
  //   return result.fold((failure) {
  //     emit(LoginErrorState(failure.errMessage));
  //   }, (data) async {
  //     if (data.status==true){
  //       loginModel = data;
  //       await CacheTokenManger.saveUserToken("${data.data!.user!.token}");
  //       emit(LoginSuccessState(data));
  //     }
  //     else{
  //       emit(LoginErrorState(data.message.toString()));
  //     }
  //   });
  // }




}
