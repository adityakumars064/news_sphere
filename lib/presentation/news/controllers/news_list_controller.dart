import 'package:news_sphere/constants/export.dart';

class NewsListController extends GetxController {
  RefreshController refreshController=RefreshController();
  RxList<NewsDataModel> newsList = <NewsDataModel>[].obs;
  RxList<LanguageModel> languageList = [
    LanguageModel(id: 1, name: AppStrings.english, languageCode: "en"),
    LanguageModel(id: 2, name: AppStrings.arabic, languageCode: "ar"),
  ].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getNewsList();
    super.onReady();
  }

  getNewsList() {
    customLoader.show(Get.overlayContext!);
    APIRepository.newsListApiCall().then(
      (value) {
        customLoader.hide();

        if (value != null) {
          NewsListResponseModel newsListResponseModel = value;
          newsList.value = newsListResponseModel.articles ?? [];
        }
      },
    ).onError(
      (error, stackTrace) {
        customLoader.hide();

        showErrorSnackBar(error.toString());
      },
    );
  }
}
