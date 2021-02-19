import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/global/title_page.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/header.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/navigation_bar.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/offers.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/recommends.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/search.dart';
import 'package:flutter_sample_quino/app/fast_food/pages/home/widget/select_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  TitlePage(title: "Especial offers"),
                  Offers(),
                  SliverToBoxAdapter(child: const SizedBox(height: 60)),
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
