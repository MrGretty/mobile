import 'package:flutter/material.dart';

import 'package:Tradomatic/components/createOffer/bloc/block.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Operations { auction, buy, sell }

class OfferFormActionView extends StatelessWidget {
  final double mediaWidthFactor = 0.75;
  final double mediaHeightFactor = 0.2;

  final RoundedRectangleBorder shape = RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0),
  );

  mapEnumToConstants(option) {
    switch (option) {
      case Operations.auction:
        return 3;
      case Operations.buy:
        return 2;
      case Operations.sell:
        return 1;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Center(
          child: Padding(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        this.mediaHeightFactor,
                    width: MediaQuery.of(context).size.width *
                        this.mediaWidthFactor,
                    child: RaisedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.gavel,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Аукцион (продажа)",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ), // text
                        ],
                      ),
                      shape: this.shape,
                      onPressed: () => BlocProvider.of<OfferBloc>(context).add(
                          OperationChanged(
                              this.mapEnumToConstants(Operations.auction))),
                      textColor: Color.fromRGBO(16, 69, 163, 1),
                      color: Color.fromRGBO(225, 231, 231, 1),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        this.mediaHeightFactor,
                    width: MediaQuery.of(context).size.width *
                        this.mediaWidthFactor,
                    child: RaisedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add_shopping_cart,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Продать",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ), // text
                        ],
                      ),
                      shape: this.shape,
                      onPressed: () => BlocProvider.of<OfferBloc>(context).add(
                          OperationChanged(
                              this.mapEnumToConstants(Operations.buy))),
                      textColor: Color.fromRGBO(16, 69, 163, 1),
                      color: Color.fromRGBO(225, 231, 231, 1),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        this.mediaHeightFactor,
                    width: MediaQuery.of(context).size.width *
                        this.mediaWidthFactor,
                    child: RaisedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add_shopping_cart,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Купить",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ), // text
                        ],
                      ),
                      shape: this.shape,
                      onPressed: () => BlocProvider.of<OfferBloc>(context).add(
                          OperationChanged(
                              this.mapEnumToConstants(Operations.sell))),
                      textColor: Color.fromRGBO(16, 69, 163, 1),
                      color: Color.fromRGBO(225, 231, 231, 1),
                    ),
                  ),
                ]),
            padding: EdgeInsets.all(40.0),
          ),
        ));
  }
}
