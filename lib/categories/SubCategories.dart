import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/UpperCategoryModel.dart';
import '../views/CategoryView.dart';

class UpperHomePart extends StatelessWidget {
 final CategoryModel category ;

   UpperHomePart({Key? key, required this.category}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return CategoryView(categoryName: category.text,);
            },));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("${category.image}"),
                  fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 200,
          child: Center(
            child: Text("${category.text}",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
              ),
            ),
          ),
        )
      ),
    );
  }
}
