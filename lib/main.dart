import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdevice/services/NewServices.dart';
import 'package:vdevice/views/homeView.dart';


//Your API key is: 0c04f16abd294b57ad082e8af1e54a9a
main(){

  runApp(News());
}
class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}
