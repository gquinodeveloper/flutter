import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Style.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
