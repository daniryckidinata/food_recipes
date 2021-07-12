library detail;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipes/helpers/color_resources.dart';
import 'package:food_recipes/helpers/icon_resources.dart';
import 'package:food_recipes/helpers/image_resources.dart';
import 'package:food_recipes/helpers/string_resources.dart';

part '../components/detail_card.dart';
part '../components/detail_header.dart';
part '../components/icon_back.dart';
part '../components/icon_bookmark.dart';
part '../components/ingredients_card.dart';
part '../components/ingredients_item.dart';
part '../components/instructions_card.dart';
part '../components/instructions_item.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.kCharadeColor,
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Image.asset(
                  ImageResources.imagesSpicy,
                  fit: BoxFit.cover,
                ),
              ),
              Align(alignment: Alignment.bottomCenter, child: _DetailCard()),
            ],
          ),
        ),
      ),
    );
  }
}
