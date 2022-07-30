import 'package:flutter/material.dart';
import 'package:assignment/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world'),
      ),
      body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(vm.articles[index].imageURL),
              title: Text(vm.articles[index].title),
            );
          }),
    );
  }
}
