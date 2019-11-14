import 'package:Tradomatic/components/common/LoggedInHeader.dart';
import 'package:Tradomatic/components/createOffer/OfferFormActionView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Tradomatic/components/common/PercentIndicator.dart';

import 'package:Tradomatic/components/createOffer/bloc/block.dart';

class OfferFormsView extends StatelessWidget {
  getPercentAccordingToState(state) {
    if (state == OfferStateAction()) return .1;
    return .2;
  }

  getLayoutAccordingToState(state) {
    if (state == OfferStateAction()) return OfferFormActionView();

    return Text('s');
  }

  getCircleTextAccordingToState(state) {
    if (state == OfferStateAction()) return '10%';

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
    );
  }
}
