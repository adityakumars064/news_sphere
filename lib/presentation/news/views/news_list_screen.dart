import 'package:news_sphere/constants/app_colors.dart';
import 'package:news_sphere/constants/export.dart';
import 'package:news_sphere/widgets/custom_refresh_indicator.dart';

class NewsListScreen extends GetView<NewsListController> {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _latestNewsText(),
            Expanded(
              child: CustomRefreshIndicator(
                refreshController: controller.refreshController,
                onLoad: () {
                  controller.getNewsList();
                },
                child: ListView.separated(
                  shrinkWrap: true,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: margin_10, bottom: margin_20),
                  itemCount: controller.newsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.newsDetailScreen, arguments: {keyModel: controller.newsList[index]});
                        },
                        child: NewsItemWidget(newsDataModel: controller.newsList[index]));
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: height_15,
                    );
                  },
                ).marginOnly(top: margin_10),
              ),
            ),
          ],
        ).marginSymmetric(horizontal: margin_15),
      ),
    );
  }

  _appBar() {
    return CustomAppBar(
      leading: Container(),
      actions: [
        Switch(
          value: Get.isDarkMode,
          onChanged: (value) {
            if (Get.isDarkMode) {
              Get.changeTheme(AppTheme.lightTheme);
              Get.changeThemeMode(ThemeMode.light);

            } else {
              Get.changeTheme(AppTheme.darkTheme);
              Get.changeThemeMode(ThemeMode.dark);
            }
            Get.offAllNamed(AppRoutes.splash);
          },
        ),
        PopupMenuButton(
            color: Get.theme.secondaryHeaderColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius_10), side: BorderSide(color: AppColors.primaryColor, width: 1)),
            offset: Offset(0, 40),
            itemBuilder: (context) {
              return controller.languageList
                  .map((e) => PopupMenuItem(
                      onTap: () async {
                        debugPrint(Get.locale.toString());
                        PreferenceManger.setLanguage(e.languageCode);
                        Get.updateLocale(Locale(e.languageCode ?? ""));
                        debugPrint(Get.locale.toString());
                      },
                      height: height_20,
                      padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: margin_10),
                            child: Text(
                              e.name ?? "",
                              style: TextStyles.poppins14w500(),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )))
                  .toList();
            },
            child: Icon(
              Icons.language_rounded,
              color: Get.theme.secondaryHeaderColor,
            )).marginSymmetric(horizontal: margin_15)
      ],
      title: AppStrings.latestNews.tr,
    );
  }

  _latestNewsText() {
    return Text(
      AppStrings.latestNews.tr,
      style: TextStyles.poppins16w600(),
    ).marginOnly(top: margin_15);
  }
}
