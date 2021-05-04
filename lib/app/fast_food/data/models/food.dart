import 'package:flutter/material.dart';

class Food {
  String key;
  String path;
  String name;
  String ingredients;
  String time;
  String kall;
  String serve;
  String assessment;
  String information;
  double price;
  String category;

  Food({
    @required this.key,
    @required this.path,
    @required this.name,
    @required this.ingredients,
    @required this.time,
    @required this.kall,
    @required this.serve,
    @required this.assessment,
    @required this.information,
    @required this.price,
    @required this.category,
  });
}

final responseFoods = <Food>[
  Food(
    key: "key_1",
    path: "assets/fast_food/burger_4.jpg",
    name: "Bay Burgers",
    ingredients: "10 ingredients",
    time: "40 min",
    kall: "234 kall",
    serve: "3 serve",
    assessment: "4.5",
    information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    price: 15.9,
    category: "Brazil",
  ),
  Food(
      key: "key_2",
      path: "assets/fast_food/burger_1.jpg",
      name: "Burger & Barrel",
      ingredients: "6 ingredients",
      time: "30 min",
      kall: "234 kall",
      serve: "3 serve",
      assessment: "4.8",
      information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      price: 22.9,
      category: "Japan"),
  Food(
      key: "key_3",
      path: "assets/fast_food/burger_2.jpg",
      name: "Jolly Burgers",
      ingredients: "8 ingredients",
      time: "20 min",
      kall: "187 kall",
      serve: "6 serve",
      assessment: "4.8",
      information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      price: 35.9,
      category: "Italian"),
  Food(
      key: "key_4",
      path: "assets/fast_food/burger_3.png",
      name: "Two Hands",
      ingredients: "11 ingredients",
      time: "45 min",
      kall: "134 kall",
      serve: "2 serve",
      assessment: "4.8",
      information: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      price: 29.9,
      category: "Peru"),
];
