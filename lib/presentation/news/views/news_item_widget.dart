import 'package:news_sphere/constants/export.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsDataModel? newsDataModel;

  const NewsItemWidget({super.key, this.newsDataModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _image(),
        _sourceText(),
        _titleText(),
        _descriptionText(),
      ],
    );
  }

  _image() {
    return Hero(
tag: newsDataModel?.title??"",
      child: NetworkImageWidget(
        imageUrl: newsDataModel?.urlToImage,
        width: Get.width,
        height: height_180,
        radius: radius_12,
      ),
    );
  }

  _sourceText() {
    return Text(
      "${AppStrings.source.tr}: ${newsDataModel?.source?.name ?? ""}",
      style: TextStyles.poppins10w500()?.copyWith(fontWeight: FontWeight.w600),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ).marginOnly(top: margin_10);
  }

  _titleText() {
    return Text(
      newsDataModel?.title ?? "",
      style: TextStyles.poppins12w500()?.copyWith(fontWeight: FontWeight.w600),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ).marginOnly(top: margin_5);
  }

  _descriptionText() {
    return Text(
     newsDataModel?.description ?? "",
      style: TextStyles.poppins10w500(),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ).marginOnly(top: margin_5);
  }
}
