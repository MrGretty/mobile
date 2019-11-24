
import 'package:Tradomatic/pages/autorizedPages/CreateOfferPage.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => WelcomePage());
    case 'createOffer':
      return MaterialPageRoute(builder: (context) => CreateOfferPage());
    default:
      return MaterialPageRoute(builder: (context) => WelcomePage());
  }
}
