import 'package:douban_app/pages/main/main_page.dart';
import 'package:flutter/material.dart';

// import 'pages/widgets/star_rating.dart';
// import 'pages/widgets/dashed_line.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //水波纹效果透明-去掉水波纹
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: MainPage(),
    );
  }
}
