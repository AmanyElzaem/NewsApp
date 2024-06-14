import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vdevice/categories/verticalPartHome.dart';

import '../categories/NewsListViewBuilder.dart';
import '../categories/horizintalPartHome.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("Cloud",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ) ,
      body:
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HomeCategory()),
            SliverToBoxAdapter(child:SizedBox(height: 10,),),
            SliverToBoxAdapter(child: NewsListViewBuilder(category: 'general',))
          ],
        ),
      )
     // HomeCategory2()
    );
  }
}
