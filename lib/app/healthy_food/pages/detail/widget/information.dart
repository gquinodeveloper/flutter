import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';

class Information extends StatelessWidget {
  const Information({
    Key key,
    @required this.food,
  }) : super(key: key);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverToBoxAdapter(
        child: TweenAnimationBuilder(
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
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step 1",
                  style: Theme.of(context).textTheme.button.copyWith(
                      color: Style.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  food.information,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Style.black, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
