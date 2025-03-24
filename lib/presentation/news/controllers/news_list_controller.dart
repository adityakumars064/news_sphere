import 'package:news_sphere/constants/export.dart';
import 'package:news_sphere/widgets/helper_widget.dart';

class NewsListController extends GetxController{
  RxList<NewsDataModel> newsList=<NewsDataModel>[].obs;
@override
  void onInit() {
    
  super.onInit();
  }
  
  
  @override
  void onReady() {
    getNewsList();
    super.onReady();
  }
  
  getNewsList(){
  APIRepository.newsListApiCall().then((value) {
    if(value!=null){
      NewsListResponseModel newsListResponseModel=value;
      newsList.value=newsListResponseModel.articles??[];
    }

  },).onError((error, stackTrace) {
    showErrorSnackBar(error.toString());
  },);
  }
}