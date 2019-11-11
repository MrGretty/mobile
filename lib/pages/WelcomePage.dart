import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// #e1e7e7
class WelcomePage extends StatelessWidget {
  static final String assetWelcomeName = 'assets/welcome.svg';
  static final String assetBarleyName = 'assets/barley.svg';
  static final String assetCornName = 'assets/corn.svg';
  static final String assetRapeSeedName = 'assets/rapeSeed.svg';
  static final String assetSoybeansName = 'assets/soybean.svg';
  static final String assetSunflowerName = 'assets/sunflower.svg';
  static final String assetWheatName = 'assets/wheat.svg';
  static final double height = 40;
  static final double width = 40;

  final Widget svgWelcomeIcon = new SvgPicture.asset(
    assetWelcomeName,
    semanticsLabel: 'Welcome',
    height: 140,
    width: 120,
  );

  final Widget svgBarleyIcon = new SvgPicture.asset(
    assetBarleyName,
    semanticsLabel: 'Barley',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  final Widget svgWheatIcon = new SvgPicture.asset(
    assetWheatName,
    semanticsLabel: 'Barley',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  final Widget svgSunflowerIcon = new SvgPicture.asset(
    assetSunflowerName,
    semanticsLabel: 'Sunflower',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  final Widget svgSoyBeansIcon = new SvgPicture.asset(
    assetSoybeansName,
    semanticsLabel: 'SoyBeans',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  final Widget svgCornIcon = new SvgPicture.asset(
    assetCornName,
    semanticsLabel: 'Corn',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  final Widget svgRapeSeedIcon = new SvgPicture.asset(
    assetRapeSeedName,
    semanticsLabel: 'RapeSeed',
    height: height,
    width: width,
    color: Color.fromRGBO(172, 202, 70, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 231, 231, 1),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Container(child: svgWelcomeIcon)],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(child: svgWheatIcon),
                  Container(child: svgSunflowerIcon),
                  Container(child: svgRapeSeedIcon),
                  Container(child: svgCornIcon),
                  Container(child: svgSoyBeansIcon),
                  Container(child: svgBarleyIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
