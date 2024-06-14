import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/UpperCategoryModel.dart';
import 'SubCategories.dart';

class HomeCategory extends StatelessWidget {
   HomeCategory ({Key? key}) : super(key: key);

  List<CategoryModel> f_category = [
    CategoryModel(
      image: 'assets/img_2.png',
      text: 'Business',
    ),
    CategoryModel(
      image: 'assets/img_5.png',
      text: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      text: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      text: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    ),
    CategoryModel(
      image: 'assets/img_3.png',
      text: 'Sports',
    ),
    CategoryModel(
      image: 'assets/img_4.png',
      text: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 100,
     child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: f_category.length,
      itemBuilder:(context, index) {
       return UpperHomePart(
         category: f_category[index],
       );
        }, ),
          );

  }
}
