import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/detail/detail_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_sample_quino/app/fast_food/data/models/food.dart';

class Recommends extends StatelessWidget {
  const Recommends({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      sliver: SliverToBoxAdapter(
        child: AspectRatio(
          aspectRatio: 9 / 3.7,
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
                Container(
                  height: 160.0,
                  width: 300.0,
                  margin: EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(food.path),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  left: 0.0,
                  bottom: 9.5,
                  child: Container(
                    height: 60.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          food.name,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                        ),
                        Text(
                          "\$ ${food.price.toString()}",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  right: 5.0,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/fast_food/favorite.svg',
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
