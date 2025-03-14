
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:workify_user/features/login/data/repos/login_repos_imple.dart';

 import 'api_service.dart';
//dependency Injection

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<LoginRepoImpl>(LoginRepoImpl(
    getIt.get<ApiService>(),
  ));
  // getIt.registerSingleton<AllCategoriesRepoImpl>(AllCategoriesRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<SignUpRepoImpl>(SignUpRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<SellAllBestViewRepoImpl>(SellAllBestViewRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //

  //
  // getIt.registerSingleton<ProfileRepoImpl>(ProfileRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<AuthVerificationReposImpl>(AuthVerificationReposImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<ChooseLocationReposImpl>(ChooseLocationReposImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<FavDataRepoImpl>(FavDataRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<SearchReposImpl>(SearchReposImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<DeleteAccountReposImple>(DeleteAccountReposImple(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<ProductDetailsRepoImpl>(ProductDetailsRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<AddAdvertisementsRepoImpl>(AddAdvertisementsRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<AdvertisementsRepoImpl>(AdvertisementsRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<AllSubCategoriesRepoImpl>(AllSubCategoriesRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  // getIt.registerSingleton<AllSubCategoriesProductsReposImpl>(AllSubCategoriesProductsReposImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<ProductSellerRepoImpl>(ProductSellerRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<HowToMakePurchaseRepoImpl>(HowToMakePurchaseRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<NotificationsDataRepoImpl>(NotificationsDataRepoImpl(
  //   getIt.get<ApiService>(),
  // ));
  //
  // getIt.registerSingleton<ReportProductsReposImpl>(ReportProductsReposImpl(
  //   getIt.get<ApiService>(),
  // ));
}