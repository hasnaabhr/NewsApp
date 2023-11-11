import 'package:flutter/material.dart';

import 'package:news_app/Widgets/News.dart';
import 'package:news_app/models/ArticleModel.dart';

class News_listview extends StatelessWidget {
  final List<ArticalModel> articles;

  const News_listview({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: News(
              articalModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
