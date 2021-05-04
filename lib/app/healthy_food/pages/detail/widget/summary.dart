import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key key,
    @required this.food,
  }) : super(key: key);

  final Food food;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 800),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0.0, 50 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Card(
        elevation: 10.0,
        shadowColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        margin: EdgeInsets.all(15.0),
        child: Container(
          height: 140.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                food.name,
                style: Theme.of(context).textTheme.button.copyWith(
                    color: Colors.black87,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                food.ingredients,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black38, fontSize: 15),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _icons(context, 'assets/healthy_food/timer.svg', food.time),
                  _icons(context, 'assets/healthy_food/fire.svg', food.kall),
                  _icons(context, 'assets/healthy_food/circle.svg', food.serve),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _icons(BuildContext context, String path, String information) {
  return Row(
    children: [
      SvgPicture.asset(
        path,
        color: Style.orange,
        width: 20.0,
        height: 20.0,
      ),
      SizedBox(width: 8.0),
      Text(
        information,
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(color: Colors.black38, fontSize: 14),
      ),
    ],
  );
}
