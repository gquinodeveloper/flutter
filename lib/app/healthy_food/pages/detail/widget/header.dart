import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'button_appbar.dart';
import 'summary.dart';

class Header extends StatelessWidget {
  const Header({Key key, @required this.food}) : super(key: key);
  final Food food;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 12.2,
      child: Stack(
        children: [
          Hero(
            tag: '${food.key}_show',
            child: Container(
              margin: EdgeInsets.only(bottom: 95.0),
              decoration: BoxDecoration(
                color: Style.brown,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                    image: AssetImage(food.path), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20.0,
            right: 20.0,
            child: ButtonAppBar(),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: Summary(food: food),
          ),
        ],
      ),
    );
  }
}
