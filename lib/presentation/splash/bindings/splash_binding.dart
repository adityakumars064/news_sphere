import 'package:news_sphere/constants/export.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut<SplashController>(() => SplashController(),);
  }

}