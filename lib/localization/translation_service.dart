import 'package:news_sphere/constants/export.dart';


class TranslationService extends Translations{

  static Locale? get locale =>PreferenceManger.getLanguage()??Locale("en");

  static const fallbackLocale = Locale('en');

  @override
  Map<String, Map<String, String>> get keys => {
    'ar_SA': ar_SA,
    'en_US': en_US,
  };
}