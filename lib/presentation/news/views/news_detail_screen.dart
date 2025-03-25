import 'package:intl/intl.dart';
import 'package:news_sphere/constants/export.dart';

class NewsDetailScreen extends GetView<NewsDetailController> {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Scaffold(
      appBar: CustomAppBar(title: AppStrings.details.tr,),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: margin_15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image(),
              _sourceText(),

              _titleText(),
              _descriptionText(),
            ],
          ),
        ),
      ),
    );
  }

  _image() {
    return Hero(
      tag: controller.newsDataModel.value?.title??"",
        child: NetworkImageWidget(imageUrl: controller.newsDataModel.value?.urlToImage,width: Get.width,height: height_180,radius: radius_12,).marginOnly(top: margin_20));
  }

  _sourceText() {
    return Row(
      children: [
        Expanded(
          child: Text("${AppStrings.source.tr}: ${controller.newsDataModel.value?.source?.name??""}",style: TextStyles.poppins10w500()?.copyWith(fontWeight: FontWeight.w600),
            maxLines: 1,overflow: TextOverflow.ellipsis,).marginOnly(top: margin_10),
        ),
        Text(
          DateFormat("yyyy-MM-dd HH:mm").format(DateTime.parse(controller.newsDataModel.value?.publishedAt??DateTime.now().toString())),
          style: TextStyles.poppins8w500()?.copyWith(fontWeight: FontWeight.w600,color: Colors.grey),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).marginOnly(top: margin_10),
      ],
    );
  }

  _titleText() {
    return Text(controller.newsDataModel.value?.title??"",style: TextStyles.poppins12w500()?.copyWith(fontWeight: FontWeight.w600),
      maxLines: 2,overflow: TextOverflow.ellipsis,).marginOnly(top: margin_5);
  }

  _descriptionText() {
    return Text(
      controller.newsDataModel.value?.content??"",
      style: TextStyles.poppins10w500(),

    ).marginOnly(top: margin_5);
  }
}
