import 'package:flutter/material.dart';

class Category {
  final String path;
  final String name;

  Category({
    @required this.path,
    @required this.name,
  });
}

final responseCategories = <Category>[
  Category(path: "assets/fast_food/burger.svg", name: "Burger"),
  Category(path: "assets/fast_food/coffee.svg", name: "Coffee"),
  Category(path: "assets/fast_food/snack.svg", name: "snack"),
  Category(path: "assets/fast_food/promotions.svg", name: "More"),
];
