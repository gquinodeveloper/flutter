import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/global/title_page.dart';

import 'widget/header.dart';
import 'widget/information.dart';
import 'widget/ingredients.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key key,
    @required this.food,
  }) : super(key: key);
  final Food food;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(food: food),
          Expanded(
            child: CustomScrollView(
              slivers: [
                TitlePage(title: "Ingredients"),
                Ingredients(),
                TitlePage(title: "Cooking instruction"),
                Information(food: food),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
