import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/spalsh/splash.dart';
import 'package:flutter_sample_quino/app/healthy_food/pages/home/home_page.dart';
import 'package:flutter_sample_quino/app/ui_bottom_navigation_bar/pages/home/home_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 25.0),
              child: Text(
                "TEMPLATES",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                ),
                child: Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.35),
                        BlendMode.dstATop,
                      ),
                      image: NetworkImage(
                          'https://i.pinimg.com/474x/db/70/f6/db70f6b8a2b9349cd1ffaa9c76485e5a.jpg'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Healthy Food',
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Splash(),
                  ),
                ),
                child: Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.35),
                        BlendMode.dstATop,
                      ),
                      image: NetworkImage(
                          'https://i.pinimg.com/474x/26/eb/d6/26ebd66a7486852832605cae986a8b61.jpg'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Fast Food',
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(15),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeNavigationBar(),
                  ),
                ),
                child: Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.35),
                        BlendMode.dstATop,
                      ),
                      image: NetworkImage(
                          'https://i.pinimg.com/474x/26/49/f2/2649f2b2907af94d5464f4f6f6634eb7.jpg'),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Bottom Navigation',
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                    ),
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
