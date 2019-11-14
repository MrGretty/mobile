import 'package:Tradomatic/pages/notAutorizedPages/LoginPage.dart';
import 'package:Tradomatic/pages/notAutorizedPages/RegistrationPage.dart';
import 'package:Tradomatic/pages/WelcomePage.dart';
import 'package:Tradomatic/pages/autorizedPages/CreateOfferPage.dart';
import 'package:flutter/material.dart';



Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => WelcomePage());
    case 'login':
      return MaterialPageRoute(builder: (context) => LoginPage());
    case 'registration':
      return MaterialPageRoute(builder: (context) => RegistrationPage());
    case 'createOffer':
      return MaterialPageRoute(builder: (context) => CreateOfferPage());
    default:
      return MaterialPageRoute(builder: (context) => WelcomePage());
  }
}
