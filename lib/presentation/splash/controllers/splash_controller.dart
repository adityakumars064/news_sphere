import 'package:news_sphere/constants/export.dart';

class SplashController extends GetxController{
@override
  void onInit() {
  _navigateSplash();  
    super.onInit();
  }
  
  _navigateSplash(){
  Future.delayed(Duration(milliseconds: 3000),() {
    Get.offAllNamed(AppRoutes.newsListScreen);
  },);
  }
}