import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/detail/widget/button_appbar.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/detail/widget/information.dart';

import 'widget/header.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key key,
    @required this.food,
  }) : super(key: key);
  final Food food;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.2],
                ).createShader(
                  Rect.fromLTRB(0, 0, rect.left, rect.height),
                );
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                'assets/fast_food/smoke.jpg',
                height: 530,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: -8,
              left: 20.0,
              right: 20.0,
              child: ButtonAppBar(),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  Header(food: null),
                ],
              ),
            ),
            Information(
              food: food,
            ),
          ],
        ),
      ),
    );
  }
}
