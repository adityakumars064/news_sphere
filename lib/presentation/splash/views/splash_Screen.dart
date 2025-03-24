import 'package:news_sphere/constants/app_assets.dart';
import 'package:news_sphere/constants/dimens.dart';
import 'package:news_sphere/constants/export.dart';
import 'package:news_sphere/widgets/asset_image_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: Get.width,
            height: Get.height,
            child: Column(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AssetImageWidget(imagePath: AppAssets.imagesIcSplashLogo,height: height_250,width: height_250,),
              ],
            ),
          ),
        );
      },
    );
  }
}
