import 'dart:convert';

import 'package:assignment/model/newsArticle.dart';
import 'package:http/http.dart' as http;

class WebSevice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2022-06-29&sortBy=publishedAt&apiKey=3429f32aace14a2ba5d0b448eefa6fa0";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("failed to get top news ");
    }
  }
}
