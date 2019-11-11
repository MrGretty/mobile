import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationPage extends StatelessWidget {
  static final String assetLogoName = 'assets/logo.svg';
  static final String assetFlagName = 'assets/ua.svg';

  final Widget svgLogoIcon = new SvgPicture.asset(
    assetLogoName,
    semanticsLabel: 'Logo',
    height: 35,
    width: 20,
  );

  final Widget svgFlagIcon = new SvgPicture.asset(
    assetFlagName,
    semanticsLabel: 'Flag',
    height: 30,
    width: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(child: svgLogoIcon),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                      color: Theme.of(context).buttonColor,
                      onPressed: () => {},
                      child: Text('Login',
                          style: TextStyle(fontSize: 18, color: Colors.white))),
                  Container(
                    child: svgFlagIcon,
                    margin: const EdgeInsets.only(
                      left: 20.0,
                    ),
                  )
                ],
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(child: Text('registration')));
  }
}
