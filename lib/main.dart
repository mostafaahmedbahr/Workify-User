
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:workify_user/features/register/presentation/view_model/register_cubit.dart';
import 'package:workify_user/features/selectAge/presentation/view_model/select_age_cubit.dart';

import 'core/utils/app_services/remote_services/service_locator.dart';
import 'features/layout/presentation/view_model/layout_cubit.dart';
import 'features/login/data/repos/login_repos_imple.dart';
import 'features/login/presentation/view_model/login_cubit.dart';
import 'features/register/data/register_repos/register_repos_imple.dart';
import 'features/selectAge/data/repos/select_age_repos_imple.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'main_importants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await CacheTokenManger.getUserToken();
  debugPrint("main");
  debugPrint("Retrieved token: $token");
  await CacheHelper.init();
  await EasyLocalization.ensureInitialized();
  setup();
  Bloc.observer = SimpleBlocObserver();
  runApp(EasyLocalization(
      startLocale: const Locale('en',""),
      supportedLocales: const [
        Locale('ar',""),
        Locale('en',""),
      ],
      path: 'assets/lang',
      saveLocale: true,// <-- change the path of the translation files
      fallbackLocale: const Locale('ar',""),
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      child:  const MyApp()
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit (getIt.get<LoginRepoImpl>()) ),
        BlocProvider(create: (context) => RegisterCubit (getIt.get<RegisterRepoImpl>()) ),
        BlocProvider(create: (context) => SelectAgeCubit (getIt.get<SelectAgeRepoImpl>()) ),
        BlocProvider(create: (context) => LayoutCubit ( )),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        // title: LocaleKeys.appName.tr(),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.offWhiteColor,
          appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0,
            backgroundColor: AppColors.offWhiteColor,
          ),
          fontFamily: 'Inter',
          primarySwatch: Colors.blue,
        ),
        home:   const SplashView() ,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
      ),
    );
  }
}

