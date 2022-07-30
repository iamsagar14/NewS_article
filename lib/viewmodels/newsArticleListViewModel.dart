import 'package:assignment/model/newsArticle.dart';
import 'package:assignment/services/web_service.dart';
import 'package:assignment/viewmodels/newsarticleViewModel.dart';
import 'package:flutter/cupertino.dart';

class NewArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];
  // List<NewsArticleViewModel> articles =List<NewsArticleViewModel>.empty(growable: true);
  NewArticleListViewModel() {
    _populateTopHeadline();
  }
  void _populateTopHeadline() async {
    List<NewsArticle> newsArticles = await WebSevice().fetchTopHeadlines();
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    print(articles);
    notifyListeners();
  }
}
