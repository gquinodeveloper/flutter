import 'package:flutter/material.dart';

class Food {
  String key;
  String path;
  String name;
  String ingredients;
  String time;
  String kall;
  String serve;
  String information;

  Food({
    @required this.key,
    @required this.path,
    @required this.name,
    @required this.ingredients,
    @required this.time,
    @required this.kall,
    @required this.serve,
    @required this.information,
  });
}

final responseFoods = <Food>[
  Food(
    key: "key_1",
    path: "assets/healthy_food/food_2.jpg",
    name: "Chickpea Salad",
    ingredients: "10 ingredients",
    time: "40 min",
    kall: "134 kall",
    serve: "4 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_2",
    path: "assets/healthy_food/food_1.jpg",
    name: "Greek salad",
    ingredients: "6 ingredients",
    time: "30 min",
    kall: "234 kall",
    serve: "3 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_3",
    path: "assets/healthy_food/food_3.jpg",
    name: "Mediterranean",
    ingredients: "8 ingredients",
    time: "20 min",
    kall: "187 kall",
    serve: "6 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_4",
    path: "assets/healthy_food/food_4.jpg",
    name: "Italian Pasta",
    ingredients: "11 ingredients",
    time: "45 min",
    kall: "134 kall",
    serve: "2 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_5",
    path: "assets/healthy_food/food_5.jpg",
    name: "Healthy Chicken",
    ingredients: "4 ingredients",
    time: "30 min",
    kall: "249 kall",
    serve: "3 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_6",
    path: "assets/healthy_food/food_6.jpg",
    name: "Avocado Corn",
    ingredients: "7 ingredients",
    time: "20 min",
    kall: "99 kall",
    serve: "5 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_7",
    path: "assets/healthy_food/food_7.jpg",
    name: "Cauliflower Potato",
    ingredients: "12 ingredients",
    time: "35 min",
    kall: "184 kall",
    serve: "3 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  Food(
    key: "key_8",
    path: "assets/healthy_food/food_8.jpg",
    name: "Quinoa Tabbouleh",
    ingredients: "6 ingredients",
    time: "50 min",
    kall: "222 kall",
    serve: "3 serve",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),
  
];
