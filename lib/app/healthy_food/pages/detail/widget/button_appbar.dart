import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 40.0,
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[200],
              size: 20,
            ),
          ),
        ),
        Container(
          width: 40.0,
          height: 40.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black54,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            'assets/healthy_food/favorite.svg',
            color: Colors.grey[200],
          ),
        ),
      ],
    );
  }
}
