import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 10.0, bottom: 25.0),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                text: "Hello, ",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Style.black, fontWeight: FontWeight.w800),
                children: [
                  TextSpan(
                    text: 'Bethzy',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Style.black, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                color: Style.orange,
                image: DecorationImage(
                  image: AssetImage('assets/healthy_food/profile.jpg'),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(12.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
