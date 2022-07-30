import 'package:assignment/model/newsArticle.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;
  NewsArticleViewModel({required NewsArticle article}) : _newsArticle = article;
  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description;
  }

  String get imageURL {
    return _newsArticle.urlToimage;
  }

  String get Url {
    return _newsArticle.url;
  }
}
