  import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/app_services/remote_services/api_service.dart';
 import 'login_repos.dart';


class LoginRepoImpl implements LoginRepo {
  final ApiService? apiService;

  LoginRepoImpl(this.apiService);


  // @override
  // Future<Either<Failure, LoginModel>> login({required var data}) async{
  //   try {
  //     var response = await apiService!.postData(
  //       endPoint: EndPoints.login,
  //       data: data,
  //     );
  //     LoginModel result = LoginModel.fromJson(response.data);
  //     print(response.data);
  //     print("نا مكان طباعة الداتا");
  //     return right(result);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return left(ServerFailure.fromDioError(e));
  //     } else {
  //       return left(ServerFailure(e.toString()));
  //     }
  //   }
  // }


}

