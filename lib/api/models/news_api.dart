import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsApi {
  static Future<void> getList() async {
    try {
      final result = await http.get(Uri.parse(ApiConfig.news.getList));
      if (result.statusCode != 200) {
        Log.red('뉴스 목록 가져오기 실패: ${result.statusCode}');
        return;
      }
      final body = result.body;
      final bodyJson = jsonDecode(body);
      Log.green(bodyJson.toString());
    } catch (e) {
      Log.red('뉴스 목록 가져오기 오류: $e');
    }
    final body = result.body;
    final bodyJson = jsonDecode(body);
    final List<dynamic> newsRaw = bodyJson['news'];

    Log.green(news);
    /*1.첫번쪠 방법
    for (var i = 0; i < newsRaw.length; i++) {
      final raw = newsRaw[i];
      final data = NewsData.fromMap(raw);
      newsList.add(data);
    }*/
    /*
    2번째 방법
    for(var data in newsRaw){
    newsList.add(NewsData.fromMap(data));
    }
    */

    /* 3번째 방법
     newsRaw.forEAch((date) {
     newsList.add(NewsData.fromMap(date))})
    */

    /* 4번째 방법
     newsList = newsRaw.map((data) => MewsData.fromMap(data).toList();)
    */
    //[news] => List<dynamic>
    //1.Return
    return newsRaw.map((date) => NewsDate.fromMap(date)).toList();
  }
}
