import 'package:dio/dio.dart';
import '../Models/CategoryModel.dart';


class NewsServices{


  final Dio dio;
NewsServices(this.dio);

 Future<List<HomeCategoryModel>> getNews({required var category}) async{
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=0c04f16abd294b57ad082e8af1e54a9a&category=$category');

     Map<String,dynamic> jsonData = response.data ;
    List<dynamic> articles = jsonData['articles'];

    List<HomeCategoryModel> articleList = [];

    for(var article in articles ){
      HomeCategoryModel articleCategory = HomeCategoryModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle:article['description']
      );
      articleList.add(articleCategory);
    }
   return articleList;

  }

}