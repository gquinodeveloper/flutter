import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/pages/detail/detail_page.dart';
import 'package:flutter_sample_quino/app/healthy_food/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),//HomePage(title: "Demo"),
      //home: DetailPage(),
    );
  }
}
