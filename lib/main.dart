import 'package:assignment/home_screen.dart';
import 'package:assignment/pages/newList.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:provider/provider.dart';
import 'viewmodels/newsArticleListViewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => NewArticleListViewModel(),
        child: NewsList(),
      ),
    );
  }
}
