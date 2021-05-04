import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/ui_bottom_navigation_bar/theme/Style.dart';
import 'package:flutter_sample_quino/app/ui_bottom_navigation_bar/utils/constant.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavigationBar extends StatefulWidget {
  HomeNavigationBar({Key key}) : super(key: key);

  _HomeNavigationBarState createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar>
    with SingleTickerProviderStateMixin {
  bool isMin = true;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 1200),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backgroundApp,
      body: Stack(
        children: [
          _topCard(),
          _bottomNavigationBar(),
        ],
      ),
    );
  }

  Widget _topCard() {
    return Positioned(
      top: 100.0,
      left: 25.0,
      right: 25.0,
      child: Container(
        height: 160.0,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Where do you want to go?",
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.pinkAccent),
                    ),
                    SizedBox(height: 5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        10,
                        (_) => Container(
                          height: 2,
                          width: 1,
                          color: Style.subTitle,
                          margin: EdgeInsets.only(bottom: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Desde',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.black54)),
                      Text('Mi ubicación Actual',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.black)),
                      Container(
                        width: MediaQuery.of(context).size.width * .55,
                        height: 1,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: .5, color: Colors.black26),
                          ),
                        ),
                      ),
                      Text('Hasta',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.black54)),
                      Text('Seleccione un lugar',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Style.subTitle)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 15.0),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.deepOrangeAccent,
                            Colors.red,
                            Colors.pink
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: Icon(
                        Icons.car_repair,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return Positioned(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: _navigationBar(),
        floatingActionButton: Container(
          padding: EdgeInsets.all(5.0),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.deepOrangeAccent, Colors.red, Colors.pink],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    tileMode: TileMode.clamp),
              ),
              child: FloatingActionButton(
                elevation: .0,
                highlightElevation: .0,
                foregroundColor: Colors.white,
                splashColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                child: isMin
                    ? Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          assets + "heart.svg",
                          color: Colors.white,
                        ),
                      )
                    : FadeTransition(
                        opacity: animationController.drive(
                          CurveTween(curve: Curves.easeOut),
                        ),
                        child: Icon(
                          Icons.clear,
                          size: 35.0,
                        ),
                      ),
                onPressed: () {
                  isMin = isMin ? false : true;
                  isMin
                      ? animationController.reverse()
                      : animationController.forward();
                  setState(() {});
                },
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _navigationBar() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      curve: Curves.fastOutSlowIn,
      height: isMin ? 85.0 : 400.0,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: BottomAppBar(
          elevation: .0,
          notchMargin: 10.0,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                _iconsNavigationBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: FadeTransition(
                      opacity: animationController.drive(
                        CurveTween(curve: Curves.easeOut),
                      ),
                      child: _footerNavigationBar(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _iconsNavigationBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/fast_food/home.svg",
            color: Colors.pinkAccent,
            width: 23.0,
          ),
          onPressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(right: 40),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/fast_food/search.svg",
              color: Style.subTitle,
              width: 23.0,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/fast_food/layers.svg",
              color: Style.subTitle,
              width: 23.0,
            ),
            onPressed: () {},
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/fast_food/user.svg",
            color: Style.subTitle,
            width: 23.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _footerNavigationBar() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(
        top: 20.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color.fromRGBO(240, 240, 240, 1.0)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Need advice?",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          Text(
            "What are you looking for?",
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Style.subTitle),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _footerIcons(
                assets + "doctor.svg",
                "Doctor",
                [Colors.purple, Colors.pinkAccent],
              ),
              _footerIcons(
                assets + "stethoscope.svg",
                "Consultation",
                [Colors.deepPurpleAccent, Colors.blue],
              ),
              _footerIcons(
                assets + "ambulance.svg",
                "Ambulance",
                [Colors.orange, Colors.redAccent],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _footerIcons(
                assets + "medical.svg",
                "Medical",
                [Colors.greenAccent, Colors.teal],
              ),
              _footerIcons(
                assets + "medal.svg",
                "Awards",
                [Colors.greenAccent, Colors.cyan],
              ),
              _footerIcons(
                assets + "healthcare.svg",
                "Help",
                [Colors.blue, Colors.cyan],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _footerIcons(String path, String title, List<Color> colors) {
    return Column(
      children: [
        Container(
          width: 75.0,
          height: 75.0,
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: SvgPicture.asset(path),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(color: Colors.black38),
        ),
      ],
    );
  }
}
