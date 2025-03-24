import 'package:news_sphere/constants/export.dart';


class AppPages {
  static const initialScreen = AppRoutes.splash;
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.newsListScreen,
      page: () => const NewsListScreen(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.newsDetailScreen,
      page: () => const NewsDetailScreen(),
      binding: NewsBinding(),
    ),

  ];
}