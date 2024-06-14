import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdevice/services/NewServices.dart';

import '../Models/CategoryModel.dart';
import 'SubCategory2.dart';


class HomeCategory2  extends StatelessWidget {

final List<HomeCategoryModel> articles ;
HomeCategory2({required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
           physics:NeverScrollableScrollPhysics() ,
           shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return  SunCategory2(
              article: articles[index] ,
              );
            },);



  }
}
