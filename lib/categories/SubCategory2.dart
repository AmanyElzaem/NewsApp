import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Models/CategoryModel.dart';

class SunCategory2 extends StatelessWidget {
  final HomeCategoryModel article ;
  SunCategory2(
      {Key? key, required  this.article,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: NetworkImage('${article.image ?? 'https://img.freepik.com/premium-vector/loading-icon_167801-436.jpg?w=740'}'),
                  fit: BoxFit.fill
              )
          ),
        ),
        Text("${article.title}",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        Text("${article.subTitle ?? ' '}",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.grey
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
