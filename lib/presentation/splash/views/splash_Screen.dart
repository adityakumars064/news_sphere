import 'package:news_sphere/constants/app_assets.dart';
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
        body: Column(
          children: [
AssetImageWidget(imagePath: AppAssets.imagesIcLogo)
          ],
        ),
      );
    },
    );
  }
}
