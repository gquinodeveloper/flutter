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
  Category(path: "assets/healthy_food/pizza.svg", name: "Homemade\npizza"),
  Category(path: "assets/healthy_food/salad.svg", name: "Fresh\ngreens\nsalad"),
  Category(path: "assets/healthy_food/soup.svg", name: "Seafood\nsoup"),
  Category(path: "assets/healthy_food/lemon.svg", name: "Lemon\nfresh"),
];
