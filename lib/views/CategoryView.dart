import 'package:flutter/material.dart';

import '../categories/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key,required this.categoryName}) : super(key: key);
final String categoryName ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: NewsListViewBuilder(category: categoryName,),)
          ],

        ),
      )
    );
  }
}

