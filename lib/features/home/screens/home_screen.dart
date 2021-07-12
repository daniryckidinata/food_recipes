library home;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipes/features/detail/screens/detail_screen.dart';
import 'package:food_recipes/helpers/color_resources.dart';
import 'package:food_recipes/helpers/icon_resources.dart';
import 'package:food_recipes/helpers/image_resources.dart';
import 'package:food_recipes/helpers/string_resources.dart';

part '../components/bottom_navbar_item.dart';
part '../components/bottom_navbar.dart';
part '../components/header_home.dart';
part '../components/plan_cooking_card.dart';
part '../components/your_plan_cooking.dart';
part '../components/recipes_card.dart';
part '../components/recipes_for_you.dart';
part 'bottom_navbar_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.kCharadeColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      ColorResources.kTroutColor.withOpacity(0.4),
                      ColorResources.kTunaColor.withOpacity(0.4),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 50,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      ColorResources.kTroutColor.withOpacity(0.3),
                      ColorResources.kTunaColor.withOpacity(0.3),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _HeaderHome(),
                    SizedBox(
                      height: 40,
                    ),
                    _PlanCooking(),
                    SizedBox(
                      height: 40,
                    ),
                    _RecipesForYou(),
                    SizedBox(
                      height: 130,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _BottomNavbarScreen(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
