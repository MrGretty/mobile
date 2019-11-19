import 'package:flutter/material.dart';

import 'package:Tradomatic/components/createOffer/bloc/block.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Tradomatic/constants/constants.dart' as Constants;

class OfferFormActionViewButton extends StatelessWidget {
  final int operation;

  final double mediaWidthFactor = 0.75;
  final double mediaHeightFactor = 0.2;

  OfferFormActionViewButton({this.operation});

  final RoundedRectangleBorder shape = RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0),
  );

  getOperationIcon(operation) {
    if (operation == Constants.OfferOperation.AUCTION) return Icons.gavel;
    if (operation == Constants.OfferOperation.BUYING)
      return Icons.add_shopping_cart;
    if (operation == Constants.OfferOperation.SELLING)
      return Icons.add_shopping_cart;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * this.mediaHeightFactor,
      width: MediaQuery.of(context).size.width * this.mediaWidthFactor,
      child: RaisedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              this.getOperationIcon(this.operation),
              size: 45,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                this.operation.toString(),
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
        shape: this.shape,
        onPressed: () => BlocProvider.of<OfferBloc>(context)
            .add(OperationChanged(this.operation)),
        textColor: Color.fromRGBO(16, 69, 163, 1),
        color: Color.fromRGBO(225, 231, 231, 1),
      ),
    );
  }
}

class OfferFormActionView extends StatelessWidget {
  final List<int> operations = Constants.OfferOperation.toArray();
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Center(
          child: Padding(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: this
                    .operations
                    .map((operation) => OfferFormActionViewButton(
                          operation: operation,
                        ))
                    .toList()),
            padding: EdgeInsets.all(40.0),
          ),
        ));
  }
}
