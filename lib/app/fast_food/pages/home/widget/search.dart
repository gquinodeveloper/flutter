import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';
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
            color: Style.blacklight,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/fast_food/search.svg',
                color: Colors.white70,
                height: 25.0,
              ),
              Expanded(
                child: CupertinoTextField(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(),
                  placeholder: "Search here...",
                  placeholderStyle: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(
                          color: Colors.white54, fontWeight: FontWeight.w300),
                  cursorColor: Style.yellow,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
