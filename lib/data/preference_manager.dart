import 'dart:convert';

import 'package:news_sphere/constants/export.dart';




class PreferenceManger {
  static const String locale = "locale";
  static const String theme = "theme";



 static setLanguage(String? localeValue) {
    localStorage.write(locale, localeValue);
  }

  static Locale? getLanguage() {
    final languageTag = localStorage.read(locale) as String?;
    if (languageTag != null) {
      return Locale(languageTag);
    } else {
      return null;
    }
  }






}
