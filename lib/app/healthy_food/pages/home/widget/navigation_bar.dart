import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(
                5.0,
                5.0,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _icons("assets/healthy_food/home.svg", Style.orange),
            _icons("assets/healthy_food/favorite.svg", Style.light),
            _icons("assets/healthy_food/layers.svg", Colors.black26),
            _icons("assets/healthy_food/user.svg", Style.light),
          ],
        ),
      ),
    );
  }
}

Widget _icons(String path, Color color) {
  return SvgPicture.asset(path, color: color, width: 22.0, height: 22.0);
}
