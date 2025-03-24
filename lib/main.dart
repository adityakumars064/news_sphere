

import 'package:news_sphere/constants/export.dart';


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
          theme: AppTheme.lightTheme,
          initialBinding: SplashBinding(),
          enableLog: true,
          initialRoute: AppPages.initialScreen,getPages: AppPages.routes,
        );
      },


    );
  }
}


