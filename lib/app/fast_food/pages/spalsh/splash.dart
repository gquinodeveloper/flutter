import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/global/btn_primary.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/home_page.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: new BoxDecoration(
          color: Colors.black,
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage('assets/fast_food/background.jpg')
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, bottom: 10.0),
              child: Center(
                child: SvgPicture.asset('assets/fast_food/burger_back.svg',
                    height: 80.0),
              ),
            ),
            Center(
              child: Text(
                'BURGER',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Center(
              child: Text(
                'C I T Y',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            Spacer(),
            Text(
              "World's \nGreatest\nBurgers\n...",
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 60.0),
              child: BtnPrimary(
                text: 'Get start here',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
