import 'package:dio/dio.dart';
import 'package:news_app/models/ArticleModel.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=7685dca1f128496e9ea3c83216261b42&country=us&category=$category');

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticalModel> articlelist = [];

      for (var articles in articles) {
        ArticalModel articalModel = ArticalModel(
          image: articles['urlToImage'],
          title: articles['title'],
          subtitle: articles['description'],
        );
        articlelist.add(articalModel);
      }
      return articlelist;
    } catch (e) {
      return [];
    }
  }
}
