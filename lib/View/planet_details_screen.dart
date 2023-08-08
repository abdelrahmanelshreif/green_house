import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:green_house/View/planet_widgets.dart';
import 'package:flutter_svg/svg.dart';

class PlanetDetailsScreen extends StatefulWidget {
  const PlanetDetailsScreen({super.key});

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
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

          return _builldPageContent(boxConstraints, topPosition, leftPosition,
              deviceHeight, deviceWidth);
        },
      ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }
}

Widget _builldPageContent(BoxConstraints constraints, double topPosition,
    double leftPosition, double deviceHeight, double deviceWidth) {
  return Column(
    children: [
      Stack(
        children: [
          buildPlanetImageDetailsScreen(constraints),
          buildBackBtn(topPosition, leftPosition),
          buildmoreSettingBtn(topPosition, leftPosition),
          buildHeartOnPlanetLogo(topPosition, leftPosition),
        ],
      ),
      Container(
        padding: EdgeInsets.only(left: 23),
        child: Column(
          children: [
            buildUsageTypesOfPlanet(),
            buildSpaceVertically(deviceHeight),
            buildPlanetTitleName(),
            buildSpaceVertically(deviceHeight),
            buildStarsAndRate(),
            buildSpaceVertically(deviceHeight),
            buildTextbeforeDescritionOfPlanet(
                kingdom: "KINGODOM", family: "FAMILY"),
            buildTextbeforeDescritionOfPlanet(
                kingdom: "Plantae", family: "Cactaceae"),
            buildSpaceVertically(deviceHeight),
            buildDescHeader(),
            buildSpaceVertically(deviceHeight),
            buildDescription(deviceWidth),
          ],
        ),
      )
    ],
  );
}

Widget buildBottomNavBar() {
  return CurvedNavigationBar(
    backgroundColor: Colors.white,
    color: Colors.white70,
    items: <Widget>[
      Column(
        children: [
          CircleAvatar(
            child: SvgPicture.asset("images/svg/home.svg"),
            backgroundColor: Colors.white,
            radius: 30,
          ),
          const Text(
            "Home",
            style: TextStyle(
              color: Color(0xFF2CD992),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            child: SvgPicture.asset("images/svg/add.svg"),
            backgroundColor: Colors.blue,
            // backgroundImage: AssetImage("images/png/add_background.png"),
          ),
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            child: SvgPicture.asset("images/svg/profile.svg"),
            backgroundColor: Colors.white,
          ),
          const Text(
            "PROFILE",
            style: TextStyle(
              color: Color(0xFFD2D2D2),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
    onTap: (index) {
      //Handle button tap
    },
  );
}
