import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/healthy_food/global/title_page.dart';
import 'package:flutter_sample_quino/app/healthy_food/theme/style.dart';

import 'widget/header.dart';
import 'widget/navigation_bar.dart';
import 'widget/recommends.dart';
import 'widget/search.dart';
import 'widget/select_category.dart';
import 'widget/vieweds.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backgroundApp,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  Header(),
                  Search(),
                  SelectCategory(),
                  TitlePage(title: "Recommended"),
                  Recommends(),
                  TitlePage(title: "Recently viewed"),
                  Vieweds(),
                  SliverToBoxAdapter(child: const SizedBox(height: 90)),
                ],
              ),
            ),
            NavigationBar(),
          ],
        ),
      ),
    );
  }
}
