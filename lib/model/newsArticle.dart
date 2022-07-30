class NewsArticle {
  final String title;
  final String description;
  final String urlToimage;
  final String url;
  NewsArticle(
      {required this.title,
      required this.description,
      required this.urlToimage,
      required this.url});
  factory NewsArticle.fromJSON(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      urlToimage: json['urlToimage'],
      url: json['url'],
    );
  }
}
