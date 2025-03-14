     import 'package:workify_user/features/register/data/register_repos/register_repos.dart';

import '../../../../core/utils/app_services/remote_services/api_service.dart';


class RegisterRepoImpl implements RegisterRepo {
  final ApiService? apiService;

  RegisterRepoImpl(this.apiService);

}