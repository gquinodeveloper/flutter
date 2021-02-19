import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/data/models/category.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 100,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            itemCount: responseCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => ItemCategory(
              index: index,
              category: responseCategories[index],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    Key key,
    @required this.index,
    @required this.category,
  }) : super(key: key);

  final int index;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.0,
      margin: EdgeInsets.only(left: 10.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: index == 0? Style.yellow : Style.blacklight,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            category.path,
            width: 40.0,
            color: index != 0? Colors.white54 :null ,
          ),
          Text(
            category.name,
            style: Theme.of(context).textTheme.button.copyWith(
                color: index == 0? Colors.black : Colors.white54,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
