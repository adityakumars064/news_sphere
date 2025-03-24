import 'dart:convert';

import 'package:news_sphere/constants/export.dart';


class APIRepository {
  static late DioClient? dioClient;

  APIRepository() {
    var dio = Dio();
    dioClient = DioClient(baseUrl, dio);
  }

  static Future newsListApiCall({search}) async {
    try {
      final response = await dioClient?.get(newsEndPoints,queryParameters: {keyApiKey:apiKey,keySearch:search??"India"});
      return NewsListResponseModel.fromJson(response);
    } catch (e) {
      return Future.error(NetworkException.getDioException(e));
    }
  }

}
