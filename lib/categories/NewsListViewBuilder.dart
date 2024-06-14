import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdevice/Models/CategoryModel.dart';
import 'package:vdevice/categories/verticalPartHome.dart';
import '../services/NewServices.dart';

class NewsListViewBuilder extends StatefulWidget{

  NewsListViewBuilder({super.key,required this.category});
  final String category ;
  @override
  State<NewsListViewBuilder> createState() =>
      _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  _NewsListViewBuilderState();

  var future;

 @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category:
    NewsListViewBuilder(category: widget.category,).category );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HomeCategoryModel>>(future:future,
        builder: (context, snapshot) {
      if(snapshot.hasData) {
        return HomeCategory2(articles: snapshot.data ?? []);
      }
      else if(snapshot.hasError){
        return Text("Oops there is an error");
      }
      else{
        return Center(child: CircularProgressIndicator());
      }
    }
    );
  }
}
