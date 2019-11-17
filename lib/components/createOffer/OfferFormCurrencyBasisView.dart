import 'package:flutter/material.dart';
import 'package:Tradomatic/components/common/SecondaryButton.dart';

import 'package:Tradomatic/constants/constants.dart' as Constants;

class OfferFormCurrencyBasisView extends StatefulWidget {
  final int operation;
  final List<int> listBasises;
  final List<String> listCurrencies;

  OfferFormCurrencyBasisView(
      {@required this.operation,
      @required this.listBasises,
      @required this.listCurrencies});

  @override
  State<OfferFormCurrencyBasisView> createState() =>
      _OfferFormCurrencyBasisView(operation, listBasises, listCurrencies);
}

class _OfferFormCurrencyBasisView extends State<OfferFormCurrencyBasisView> {
  String currency;
  List<int> listBasises;
  List<String> listCurrencies;
  int operation, basis;

  _OfferFormCurrencyBasisView(
      int operation, List<int> listBasises, List<String> listCurrencies) {
    this.operation = operation;
    this.listBasises = listBasises;
    this.listCurrencies = listCurrencies;
  }

  onCurrencyChanged(currency) => this.setState(() => this.currency = currency);
  onBasisChanged(basis) => this.setState(() => this.basis = basis);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Text(this.operation.toString()),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(bottom: 20.0),
                  child: Text('Валюта'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: this
                          .listCurrencies
                          .map((currency) => SecondaryButton(
                              text: currency,
                              leftSideRadius: 7.0,
                              onButtonPressed: () =>
                                  onCurrencyChanged(currency),
                              isActive: this.currency == currency))
                          .toList()),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(bottom: 20.0),
                  child: Text('Базис'),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: this
                            .listBasises
                            .map((item) => SecondaryButton(
                                text: item.toString(),
                                isActive: this.basis == item,
                                onButtonPressed: () => onBasisChanged(item)))
                            .toList())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
