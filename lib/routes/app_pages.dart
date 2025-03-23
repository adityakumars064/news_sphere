import 'package:news_sphere/constants/export.dart';

class AppPages {
  static const initialScreen = AppRoutes.splash;
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

  ];
}