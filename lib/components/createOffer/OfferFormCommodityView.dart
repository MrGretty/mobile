import 'package:flutter/material.dart';

import 'package:Tradomatic/components/createOffer/bloc/block.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Tradomatic/constants/constants.dart' as Constants;

class OfferFormCommodityViewButton extends StatelessWidget {
  final int commodity;

  final double mediaWidthFactor = 0.25;
  final double mediaHeightFactor = 0.12;

  OfferFormCommodityViewButton({this.commodity});

  final RoundedRectangleBorder shape = RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0),
  );

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
              Icons.add_shopping_cart,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                this.commodity.toString(),
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
        shape: this.shape,
        onPressed: () => BlocProvider.of<OfferBloc>(context)
            .add(CommodityChanged(commodity: this.commodity)),
        textColor: Color.fromRGBO(16, 69, 163, 1),
        color: Color.fromRGBO(225, 231, 231, 1),
      ),
    );
  }
}

class OfferFormCommodityView extends StatelessWidget {
  final List<int> commodities = Constants.Commodities.toArray();
  static const int ROW_SIZE = 3;

  List chunk(List list, int chunkSize) {
    List chunks = [];
    int len = list.length;
    for (int i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(list.sublist(i, size > len ? len : size));
    }
    return chunks;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: chunk(commodities, ROW_SIZE).map((commoditiesRow) {
                return Container(
                    margin: new EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          for (int commodity in commoditiesRow)
                            OfferFormCommodityViewButton(
                              commodity: commodity,
                            )
                        ]));
              }).toList()),
        ));
  }
}
