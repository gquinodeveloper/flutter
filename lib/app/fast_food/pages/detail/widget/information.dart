import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/data/models/food.dart';
import 'package:flutter_sample_quino/app/fast_food/global/btn_primary.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';
import 'package:flutter_svg/svg.dart';

import 'btn_event.dart';

class Information extends StatelessWidget {
  const Information({
    Key key,
    @required this.food,
  }) : super(key: key);

  final Food food;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.4,
      maxChildSize: 0.55,
      builder: (BuildContext context, ScrollController controller) {
        return Container(
          decoration: BoxDecoration(
            color: Style.blacklight,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 60.0,
                height: 5.0,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Expanded(
                child: ListView(
                  controller: controller,
                  children: <Widget>[
                    _title(context, food),
                    _text(context),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _additionalInformation(
                            context,
                            "assets/fast_food/timer.svg",
                            food.time,
                          ),
                          _bordeLeft(),
                          _additionalInformation(
                            context,
                            "assets/fast_food/fire.svg",
                            food.kall,
                          ),
                          _bordeLeft(),
                          _additionalInformation(
                            context,
                            "assets/fast_food/circle.svg",
                            food.serve,
                          ),
                          _bordeLeft(),
                          _additionalInformation(
                            context,
                            "assets/fast_food/promotions.svg",
                            "Promotion",
                          ),
                        ],
                      ),
                    ),
                    _quantity(context, food.price),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: BtnPrimary(
                        onPressed: null,
                        text: "Order Now",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget _title(BuildContext context, Food food) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
    child: Row(
      children: [
        Text(
          food.name,
          style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        SvgPicture.asset(
          'assets/fast_food/star.svg',
          color: Style.yellow,
          width: 20.0,
          height: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          food.assessment,
          style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget _text(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      textAlign: TextAlign.justify,
      style: Theme.of(context)
          .textTheme
          .caption
          .copyWith(color: Colors.white, fontSize: 15),
    ),
  );
}

Widget _additionalInformation(BuildContext context, String path, String text) {
  return Column(
    children: [
      SvgPicture.asset(
        path,
        width: 25.0,
        color: Style.yellow,
      ),
      SizedBox(height: 8.0),
      Text(
        text,
        style: Theme.of(context).textTheme.button.copyWith(
            color: Colors.white70, fontSize: 14.0, fontWeight: FontWeight.w500),
      ),
    ],
  );
}

Widget _quantity(BuildContext context, double price) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              BtnEvent(
                color: Style.blacklight,
                icon: Icons.remove,
                onPressed: null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  '1',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              BtnEvent(
                color: Style.blacklight,
                icon: Icons.add,
                onPressed: null,
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          "\$ ${price.toString()}",
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
        ),
      ],
    ),
  );
}

Widget _bordeLeft() {
  return Container(
    height: 20.0,
    decoration: BoxDecoration(
      border: Border(
        left: BorderSide(
          width: 2,
          color: Colors.white24,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );
}
