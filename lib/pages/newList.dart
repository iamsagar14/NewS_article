import 'package:flutter/material.dart';
import 'package:assignment/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatefulWidget {
  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top News'),
      ),
      body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            final article = vm.articles[index];
            return ListTile(
              leading: Container(
                  height: 100,
                  width: 100,
                  child: article.imageURL == null
                      ? Image.asset(
                          'assets/',
                          fit: BoxFit.cover,
                        )
                      : Image.network(article.imageURL)),
              title: Text(article.title),
              shape: ShapeBorder,
            );
          }),
    );
  }
}
