import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Tradomatic/components/common/LoggedInHeader.dart';
import 'package:Tradomatic/components/common/NavigationButtons.dart';
import 'package:Tradomatic/components/common/PercentIndicator.dart';

import 'package:Tradomatic/components/createOffer/OfferFormActionView.dart';
import 'package:Tradomatic/components/createOffer/OfferFormCurrencyBasisView.dart';
import 'package:Tradomatic/components/createOffer/OfferFormCommodityView.dart';

import 'package:Tradomatic/components/createOffer/bloc/block.dart';

class OfferFormsView extends StatelessWidget {
  getPercentAccordingToState(state) {
    if (state is OfferStateAction) return .1;
    if (state is OfferStateCurrencyBasises) return .2;
    if (state is OfferStateCommodity) return .3;

    return 1.0;
  }

  getLayoutAccordingToState(state) {
    if (state is OfferStateAction) return OfferFormActionView();
    if (state is OfferStateCurrencyBasises) {
      return OfferFormCurrencyBasisView(
          operation: state.operation,
          listBasises: state.getBasisesAccordingToOperation(),
          listCurrencies: state.getCurrencies());
    }

    if (state is OfferStateCommodity) {
      return OfferFormCommodityView();
    }

    return Text('s');
  }

  getCircleTextAccordingToState(state) {
    if (state is OfferStateAction) return '10%';
    if (state is OfferStateCurrencyBasises) return '20%';
    if (state is OfferStateCommodity) return '30%';

    return '0%';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: LoggedInHeader(),
          backgroundColor: Colors.white,
        ),
        body: BlocBuilder<OfferBloc, OfferState>(builder: (context, state) {
          return Container(
              // color: Colors.blue,
              child: Column(
            children: <Widget>[
              PercentIndicator(
                percent: this.getPercentAccordingToState(state),
                title: 'Создание предложение на рынке',
                circleText: this.getCircleTextAccordingToState(state),
              ),
              Expanded(child: getLayoutAccordingToState(state))
            ],
          ));
        }),
        bottomNavigationBar:
            BlocBuilder<OfferBloc, OfferState>(builder: (context, state) {
          if (state is OfferStateAction)
            return Container(
              width: 0,
              height: 0,
            );
          return NavigationButtons(
            onButtonBackPressed: () => {},
            onButtonMovePressed: () => {},
          );
        }));
  }
}
