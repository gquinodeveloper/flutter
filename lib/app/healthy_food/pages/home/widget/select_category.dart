import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/data/models/category.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 110,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            itemCount: responseCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) =>
                ItemCategory(category: responseCategories[index]),
          ),
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -10,
            top: -15,
            child: SvgPicture.asset(
              category.path,
              width: 70.0,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 12.0,
            child: Text(category.name,
                style: Theme.of(context).textTheme.caption.copyWith(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
