import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_house/View/planet_widgets.dart';
import 'package:green_house/View/planet_details_screen.dart';
import 'package:green_house/View/profile_screen.dart';

class DetailArticleScreen extends StatelessWidget {
  const DetailArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final boxConstraints = constraints;
          final double topPosition = constraints.maxHeight * 0.066;
          final double leftPosition = constraints.maxWidth * 0.05;
          final double deviceWidth = constraints.maxWidth;
          final double deviceHeight = constraints.maxHeight;

          return Column(
            children: [
              Stack(
                children: [
                  buildPlanetImageDetailsScreen(
                    planetImg: 'images/png/articlepage.png',
                    constraints: constraints,
                  ),
                  buildBackBtn(topPosition, leftPosition),
                  buildmoreSettingBtn(topPosition, leftPosition),
                  buildHeartOnPlanetLogo(topPosition, leftPosition),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 23),
                  child: Column(
                    children: [
                      buildUsageTypesOfPlanet(
                          text1: 'VEGATABLES', text2: 'GARDEN'),
                      buildSpaceVertically(deviceHeight),
                      buildPlanetTitleName(titleName: "Even on Urban Excursions,Finding Mother Nature's Charms"),
                      writeCollectedPlanetName(avatar:"images/svg/star_gold.svg"),

                    ],
                  )

              )
            ],
          );
        },
      ),
    );
  }
}
