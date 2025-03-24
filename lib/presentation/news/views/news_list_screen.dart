import 'package:news_sphere/constants/export.dart';

class NewsListScreen extends GetView<NewsListController>{
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: CustomAppBar(leading: Container(),

       title: AppStrings.latestNews.tr,),
     body: Obx(() =>  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         Text(AppStrings.latestNews.tr,style: TextStyles.poppins16w600(),).marginOnly(top: margin_15),
         Expanded(
           child: ListView.separated(
             shrinkWrap: true,padding: EdgeInsets.only(top: margin_10,bottom: margin_20),
             itemCount: controller.newsList.length,
             itemBuilder: (context, index) {
             return InkWell(
               onTap: () {
                 Get.toNamed(AppRoutes.newsDetailScreen,arguments: {
                   keyModel:controller.newsList[index]
                 });
               },
                 child: NewsItemWidget(newsDataModel: controller.newsList[index]));
           }, separatorBuilder: (BuildContext context, int index) {
               return Divider(height: height_15,);
           },).marginOnly(top: margin_5),
         ),

          ],).marginSymmetric(horizontal: margin_15),
     ),
   );
  }

}