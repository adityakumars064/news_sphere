
import 'package:news_sphere/constants/export.dart';

class NewsDetailController extends GetxController{
Rxn<NewsDataModel> newsDataModel=Rxn<NewsDataModel>();
  @override
  void onInit() {
    getArguments();
    super.onInit();
  }

  getArguments(){
    if(Get.arguments!=null){
      newsDataModel.value=Get.arguments[keyModel];
      newsDataModel.value;
    }
  }
}