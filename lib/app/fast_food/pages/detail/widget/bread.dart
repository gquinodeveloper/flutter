import 'package:flutter/material.dart';

class Bread extends StatelessWidget {
  const Bread({Key key, @required this.path, @required this.height})
      : super(key: key);
  final String path;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(right: 60.0),
        child: Image.asset(
          path,
          height: height,
        ),
      ),
    );
  }
}
