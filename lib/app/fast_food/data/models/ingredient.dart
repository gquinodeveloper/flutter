import 'package:flutter/material.dart';

class Ingredient {
  int id;
  String name;
  String path;
  double height;
  int state;

  Ingredient({
    @required this.id,
    @required this.name,
    @required this.path,
    @required this.height,
    @required this.state,
  });
}

final responseIngredients = <Ingredient>[
  Ingredient(
    id: 1,
    path: "assets/fast_food/meat.png",
    name: "Meat",
    height: 75.0,
    state: 0
  ),
  Ingredient(
    id: 2,
    path: "assets/fast_food/tomato.png",
    name: "Tomato",
    height: 50.0,
    state: 0
    
  ),
  Ingredient(
    id: 3,
    path: "assets/fast_food/cheese.png",
    name: "Cheese",
    height: 55.0,
    state: 0
    
  ),
  Ingredient(
    id: 4,
    path: "assets/fast_food/chicken.png",
    name: "Chicken",
    height: 55.0,
    state: 0
  ),
  Ingredient(
    id: 5,
    path: "assets/fast_food/lettuce.png",
    name: "Lettuce",
    height: 70.0,
    state: 0
  ),
 
];