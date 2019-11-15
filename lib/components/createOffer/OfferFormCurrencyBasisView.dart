import 'package:flutter/material.dart';

class OfferFormCurrencyBasisView extends StatelessWidget {
  final int operation;

  OfferFormCurrencyBasisView({@required this.operation});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            margin: new EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                width: 1.0,
              ),
            ),
            child: Text('Аукцион'),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Валюта'),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Базис'),
          ),
        ],
      ),
    );
  }
}
