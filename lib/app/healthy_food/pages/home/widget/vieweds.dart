import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/healthy_food/pages/detail/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Vieweds extends StatelessWidget {
  const Vieweds({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      sliver: SliverStaggeredGrid.countBuilder(
        crossAxisCount: 4,
        itemCount: responseFoods.length,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailPage(
                food: responseFoods[index],
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Hero(
              tag: '${responseFoods[index].key}_rshow',
              child: Image.asset(
                responseFoods[index].path,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
    );
  }
}
