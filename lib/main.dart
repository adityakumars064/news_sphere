


import 'package:news_sphere/constants/export.dart';




CustomLoader customLoader = CustomLoader();
GetStorage localStorage = GetStorage();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await APIRepository();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      useInheritedMediaQuery: true,builder: (context, child) {
        return GetMaterialApp(
          title: AppStrings.appName,
          theme: AppTheme.darkTheme,
          initialBinding: SplashBinding(),
          enableLog: true,
          translations: TranslationService(),
          fallbackLocale: TranslationService.fallbackLocale,
darkTheme: AppTheme.darkTheme,
themeMode: Get.isDarkMode?ThemeMode.dark:ThemeMode.light,
          locale: TranslationService.locale,

          initialRoute: AppPages.initialScreen,getPages: AppPages.routes,
        );
      },


    );
  }
}


