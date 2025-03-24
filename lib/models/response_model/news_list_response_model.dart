
import 'package:news_sphere/constants/export.dart';

class NewsListResponseModel {
  String? status;
  int? totalResults;
  List<NewsDataModel>? articles;

  NewsListResponseModel({this.status, this.totalResults, this.articles});

  NewsListResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <NewsDataModel>[];
      json['articles'].forEach((v) {
        articles!.add(new NewsDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
