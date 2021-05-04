import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Container(
              height: 18.0,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 3,
                    color: Style.yellow,
                    style: BorderStyle.solid
                  )
                ),
              ),
            ),
            SizedBox(width: 15.0,),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
