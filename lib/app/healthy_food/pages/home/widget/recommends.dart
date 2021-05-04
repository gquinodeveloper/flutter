import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/pages/detail/detail_page.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class Recommends extends StatelessWidget {
  const Recommends({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      sliver: SliverToBoxAdapter(
        child: AspectRatio(
          aspectRatio: 9 / 7.75,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: responseFoods.length,
            itemBuilder: (_, index) =>
                ItemRecommend(food: responseFoods[index]),
          ),
        ),
      ),
    );
  }
}

class ItemRecommend extends StatelessWidget {
  const ItemRecommend({
    Key key,
    @required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailPage(
            food: food,
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: '${food.key}_show',
                  child: Container(
                    height: 300.0,
                    width: 200.0,
                    margin: EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(food.path), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.black54, shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/healthy_food/favorite.svg',
                        color: Colors.grey[200]),
                  ),
                ),
              ],
            ),
            Text(
              food.name,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.button.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            RichText(
              text: TextSpan(
                text: food.ingredients,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black38, fontSize: 15.0),
                children: [
                  TextSpan(
                    text: '   •  ',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: Style.light,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900),
                  ),
                  TextSpan(
                    text: food.time,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.black38, fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
