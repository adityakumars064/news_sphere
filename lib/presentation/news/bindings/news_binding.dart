import 'package:news_sphere/constants/export.dart';

class NewsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NewsListController>(() => NewsListController());
    Get.lazyPut<NewsDetailController>(() => NewsDetailController());
  }

}