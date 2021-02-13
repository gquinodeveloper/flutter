import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/ingredient.dart';
import 'package:flutter_svg/svg.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      sliver: SliverToBoxAdapter(
        child: AspectRatio(
          aspectRatio: 9 / 2.72,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: responseIngredients.length,
            itemBuilder: (_, index) => TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 800),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(60 * (1 - value), 0.0),
                    child: child,
                  ),
                );
              },
              child: ItemIngredient(
                ingredient: responseIngredients[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ItemIngredient extends StatelessWidget {
  const ItemIngredient({
    Key key,
    @required this.ingredient,
  }) : super(key: key);

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: ingredient.color,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: SvgPicture.asset(
                ingredient.path,
                width: 45.0,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            ingredient.name,
            style: Theme.of(context).textTheme.caption.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          SizedBox(height: 2.0),
          Text(
            ingredient.quantity,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Colors.black38, fontSize: 13.0),
          )
        ],
      ),
    );
  }
}
