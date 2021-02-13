import 'package:flutter/material.dart';

class Ingredient {
  String path;
  String name;
  String quantity;
  Color color;

  Ingredient({
    @required this.path,
    @required this.name,
    @required this.quantity,
    @required this.color,
  });
}

final responseIngredients = <Ingredient>[
  Ingredient(
    path: "assets/healthy_food/tomato.svg",
    name: "Tomato",
    quantity: "1 items",
    color: Colors.red[50],
  ),
  Ingredient(
    path: "assets/healthy_food/cheese.svg",
    name: "Cheese",
    quantity: "200 gr",
    color: Colors.yellow[50],
  ),
  Ingredient(
    path: "assets/healthy_food/spinach.svg",
    name: "Greens",
    quantity: "2 items",
    color: Colors.green[50],
  ),
  Ingredient(
    path: "assets/healthy_food/onion.svg",
    name: "Onion",
    quantity: "1/2 items",
    color: Colors.brown[50],
  ),
];