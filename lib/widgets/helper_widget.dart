import '../constants/export.dart';


showSnackBar(String message) {
  Get.closeAllSnackbars();
  Get.snackbar(
    AppStrings.appName,
    message,
    icon: Icon(Icons.check_circle_outline_rounded),
    backgroundColor: Colors.green,
    colorText: Colors.white,
  );
}


showErrorSnackBar(String message) {
  Get.closeAllSnackbars();
  Get.snackbar(
    AppStrings.appName,
    message ?? "",
    icon: Icon(Icons.error_outline_rounded),
    backgroundColor: Colors.blue,
    colorText: Colors.white,
  );
}