import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60.0,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Style.yellow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _icons("assets/fast_food/home.svg", Colors.white, index: 0),
            _icons("assets/fast_food/bag.svg", Style.blacklight),
            _icons("assets/fast_food/layers.svg", Style.blacklight),
            _icons("assets/fast_food/user.svg", Style.blacklight),
          ],
        ),
      ),
    );
  }
}

Widget _icons(String path, Color color, {int index = 1}) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: index == 0? Style.backgroundApp: null,
      shape: BoxShape.circle
    ),
    child: SvgPicture.asset(path, color: color, width: 22.0, height: 22.0),
  );
}
