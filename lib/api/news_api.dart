import 'dart:convert';

import 'package:easy_extension/easy_extension.dart';
import 'package:http/http.dart' as http;
import 'package:news_portal/api/api_config.dart';
import 'package:news_portal/api/models/news_data.dart';

class NewsApi {
  static Future<List<NewsData>?> _getNews(String url) async {
    final result = await http
        .get(Uri.parse(ApiConfig.news.getTopic))
        .catchError((e) {
          Log.red('인기 뉴스 가져오기 오류 : $e');
          return http.Response(e.toString(), 400);
        });

    final body = result.body;
    final bodyJson = jsonDecode(body);
    final List<dynamic> newsRaw = bodyJson['news'];

    //2번방법
    // newsRaw.forEach((data) {
    //   newsList.add(NewsData.fromMap(data));
    // });

    //1번 방법
    // List<NewsData> newsList = [];

    // for (var i = 0; i < newsRaw.length; i++) {
    //   final raw = newsRaw[i];
    //   final data = NewsData.fromMap(raw);
    //   newsList.add(data);
    // }
    return newsRaw.map((data) => NewsData.fromMap(data)).toList();
  }

  static Future<List<NewsData>?> getTopic() =>
      _getNews(ApiConfig.news.getTopic);

  static Future<List<NewsData>?> getLastest() =>
      _getNews(ApiConfig.news.getTopic);
}
