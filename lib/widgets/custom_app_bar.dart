import 'package:news_sphere/constants/export.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onBackPress;
  final String? title;
  final Color? backgroundColor;

  const CustomAppBar({super.key,this.backgroundColor, this.leading, this.onBackPress, this.actions, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(scrolledUnderElevation: 0.0,backgroundColor: backgroundColor,
      leadingWidth: Get.width*0.145,

      leading: leading ??Transform.scale(

          scale: 0.65,
          child: InkWell(
            onTap: onBackPress ??
                () {
                  Get.back();
                },
            child: AssetImageWidget(
              imagePath: AppAssets.imagesIcBack,
              width: width_50,
              height: width_20,color: Get.theme.secondaryHeaderColor,
            ),
          )),
      title: Text(title ?? "",style: TextStyles.poppins16w600()?.copyWith(color: Get.theme.secondaryHeaderColor),),
      centerTitle: true,
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height_50);
}
