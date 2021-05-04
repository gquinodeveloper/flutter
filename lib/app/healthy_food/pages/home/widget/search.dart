import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Container(
          padding:EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0,
                blurRadius: 9,
                offset: Offset(
                  1.0,
                  1.0,
                ),
              ),
            ],
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/healthy_food/search.svg',
                color: Style.light,
              ),
              Expanded(
                child: CupertinoTextField(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(),
                  placeholder: "Search for recipes",
                  placeholderStyle: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(
                          color: Colors.black87, fontWeight: FontWeight.w100),
                  cursorColor: Style.orange,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
