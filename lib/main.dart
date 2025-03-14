
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'features/splash/presentation/views/splash_view.dart';
import 'main_importants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await CacheTokenManger.getUserToken();
  debugPrint("main");
  debugPrint("Retrieved token: $token");
  await CacheHelper.init();
  await EasyLocalization.ensureInitialized();
  // setup();
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
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // title: LocaleKeys.appName.tr(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhiteColor,
        fontFamily: 'Cairo',
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
    );
  }
}

