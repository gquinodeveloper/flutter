import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/data/models/ingredient.dart';

class Components extends StatelessWidget {
  const Components({Key key, @required this.components}) : super(key: key);
  final List<Ingredient> components;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 0, right: 60.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) {
            return components[index].state == 0
                ? TweenAnimationBuilder(
                    tween: Tween(begin: 1.0, end: 0.0),
                    duration: Duration(milliseconds: 450),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(200 * (1 - value), 0.0),
                          child: value == 0.0 ? null : child,
                        ),
                      );
                    },
                    child: ItemComponent(ingredient: components[index]),
                  )
                : TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 450),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(200 * (1 - value), 0.0),
                          child: child,
                        ),
                      );
                    },
                    child: ItemComponent(ingredient: components[index]),
                  );
          },
          childCount: components.length,
        ),
      ),
    );
  }
}

class ItemComponent extends StatelessWidget {
  const ItemComponent({Key key, @required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Image.asset(ingredient.path, height: ingredient.height);
  }
}
