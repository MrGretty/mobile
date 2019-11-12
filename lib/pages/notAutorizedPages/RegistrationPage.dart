import 'package:Tradomatic/components/registration/NavigationButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

enum Steps { introduction, profile, sms }

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  Steps _persentStatus = Steps.introduction;
  static final String assetLogoName = 'assets/logo.svg';

  final Widget svgLogoIcon = new SvgPicture.asset(
    assetLogoName,
    semanticsLabel: 'Logo',
    height: 35,
    width: 20,
  );

  Steps getStepsByRouter(router) {
    switch (router) {
      case '/':
        return Steps.introduction;
      case 'profile':
        return Steps.profile;
      case 'sms':
        return Steps.sms;
        break;
      default:
        return Steps.introduction;
    }
  }

  double getStepsPercentValue(steps) {
    switch (steps) {
      case Steps.introduction:
        return 0;
      case Steps.profile:
        return 33;
      case Steps.sms:
        return 66;
        break;
      default:
        return 0;
    }
  }

  void onButtonMovePressed() {
    setState(() {
      _persentStatus = Steps.values[_persentStatus.index + 1];
    });
  }

  void onButtonBackPressed() {
    setState(() {
      _persentStatus = Steps.values[_persentStatus.index - 1];
    });
  }

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
                      onPressed: () => Navigator.pushNamed(context, 'login'),
                      child: Text('Login',
                          style: TextStyle(fontSize: 18, color: Colors.white))),
                  Container(
                    child: Text(
                      'Ru',
                      style: TextStyle(color: Color.fromRGBO(172, 177, 177, 1)),
                    ),
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
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.12)),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Регистрация",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: getStepsPercentValue(_persentStatus) / 100,
                        center: new Text((getStepsPercentValue(_persentStatus))
                                .toInt()
                                .toString() +
                            '%'),
                        progressColor: Color.fromRGBO(172, 204, 70, 1)),
                  ],
                ),
              ),
              Container(
                color: Colors.amber,
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationButtons(
          onButtonBackPressed: onButtonBackPressed,
          onButtonMovePressed: onButtonMovePressed,
          isDisableBack: _persentStatus == Steps.introduction,
          isDisableMove: _persentStatus == Steps.sms,
        ));
  }
}
