import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
          final double topPosition = constraints.maxHeight * 0.05;
          final double leftPosition = constraints.maxWidth * 0.05;
          final double deviceWidth = constraints.maxWidth;
          final double deviceHeight = constraints.maxHeight;

          return _builldPageContent(constraints, topPosition, leftPosition,
              deviceHeight, deviceWidth);
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

Widget _builldPageContent(BoxConstraints constraints, double topPosition,
    double leftPosition, double deviceHeight, double deviceWidth) {
  return Column(
    children: [
      Stack(
        children: [
          _buildPlanetImageDetailsScreen(constraints),
          _buildBackBtn(topPosition, leftPosition),
          _buildmoreSettingBtn(topPosition, leftPosition),
          _buildHeartOnPlanetLogo(topPosition, leftPosition),
        ],
      ),
      Container(
        padding: EdgeInsets.only(left: 23),
        child: Column(
          children: [
            _buildUsageTypesOfPlanet(),
            _buildSpaceVertically(deviceHeight),
            _buildPlanetTitleName(),
            _buildSpaceVertically(deviceHeight),
            _buildStarsAndRate(),
            _buildSpaceVertically(deviceHeight),
            _buildTextbeforeDescritionOfPlanet(
                kingdom: "KINGODOM", family: "FAMILY"),
            _buildTextbeforeDescritionOfPlanet(
                kingdom: "Plantae", family: "Cactaceae"),
            _buildSpaceVertically(deviceHeight),
            _buildDescHeader(),
            _buildSpaceVertically(deviceHeight),
            _buildDescription(deviceWidth),
          ],
        ),
      )
    ],
  );
}

Widget _buildTextbeforeDescritionOfPlanet(
    {required String? kingdom, required String? family}) {
  return Row(
    children: [
      Flexible(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          width: 110,
          child: Text(
            kingdom!,
            overflow: TextOverflow.ellipsis, // Set overflow property
            style: TextStyle(
              color: Color(0xFF495566),
            ),
          ),
        ),
      ),
      Flexible(
        flex: 2,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          width: 110,
          child: Text(
            family!,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF495566),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _buildHeartOnPlanetLogo(double topPosition, double leftPosition) {
  return Positioned(
      top: topPosition * 6.2,
      right: leftPosition * 1,
      child: CircleAvatar(
        backgroundColor: const Color(0xffff6262),
        radius: 30,
        child: SvgPicture.asset(
          "images/svg/valentines-heart.svg",
        ),
      ));
}

Widget _buildmoreSettingBtn(double topPosition, double leftPosition) {
  return Positioned(
    top: topPosition,
    right: leftPosition,
    // Use the same value for left and right for centering
    child: const Icon(
      Icons.more_vert_rounded,
      size: 30,
      color: Colors.white,
    ),
  );
}

Widget _buildBackBtn(double topPosition, double leftPosition) {
  return Positioned(
    top: topPosition,
    left: leftPosition,
    child: const Icon(
      Icons.arrow_back_ios_new,
      color: Colors.white,
    ),
  );
}

Widget _buildSpaceVertically(double deviceHeight) =>
    SizedBox(height: deviceHeight * 0.02307);

Widget _buildPlanetImageDetailsScreen(BoxConstraints constraints) {
  return Positioned(
    child: Container(
      child: Image.asset("images/png/cactus.png"),
      margin: EdgeInsets.only(bottom: 25),
      width: double.infinity,
      height: constraints.maxHeight * 0.35,
      color: const Color(0xFFE0DFDA),
    ),
  );
}

Widget _buildDescription(double deviceWidth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: deviceWidth * 0.85,
        child: Text(
          """The word "cactus" derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name originally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought. """,
          overflow: TextOverflow.ellipsis,
          maxLines: 8,
          style: TextStyle(
            color: Color(0xff858995),
            fontSize: 15,
          ),
        ),
      ),
    ],
  );
}

Widget _buildDescHeader() {
  return Row(
    children: [
      Text(
        "DESCRIPTION",
        style: TextStyle(
          color: Color(0xFF495566),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

Widget _buildStarsAndRate() {
  return Row(
    children: [
      Icon(
        Icons.star_outlined,
        size: 20,
        color: Color(0xffffcd00),
      ),
      Icon(
        Icons.star_outlined,
        size: 20,
        color: Color(0xffffcd00),
      ),
      Icon(
        Icons.star_outlined,
        size: 20,
        color: Color(0xffffcd00),
      ),
      Icon(
        Icons.star_outlined,
        size: 20,
        color: Color(0xffffcd00),
      ),
      Icon(
        Icons.star_border_outlined,
        size: 20,
      ),
      SizedBox(width: 5),
      Text(
        "4.1",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
    ],
  );
}

Widget _buildUsageTypesOfPlanet() {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Container(
            child: const Text("DANGER",
                style: TextStyle(
                  backgroundColor: Color(0xffe7f2fd),
                  color: Color(0xff2f91eb),
                )),
          )),
      Expanded(
          flex: 3,
          child: Container(
            child: const Text("DECORATION",
                style: TextStyle(
                  backgroundColor: Color(0xffe7f2fd),
                  color: Color(0xff2f91eb),
                )),
          )),
    ],
  );
}

Widget _buildPlanetTitleName() {
  return Row(
    children: [
      Expanded(
          child: Container(
        child: const Text(
          "Circle Cactus",
          style: TextStyle(
            color: Color(0xff36455a),
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
      )),
    ],
  );
}
