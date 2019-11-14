import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoggedInHeader extends StatelessWidget {
  static final String assetLogoName = 'assets/logo.svg';

  final Widget svgLogoIcon = new SvgPicture.asset(
    assetLogoName,
    semanticsLabel: 'Logo',
    height: 35,
    width: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(child: svgLogoIcon),
          Container(
            child: Text(
              'Ru',
              style: TextStyle(color: Color.fromRGBO(172, 177, 177, 1)),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
            ),
          )
        ]);
  }
}
