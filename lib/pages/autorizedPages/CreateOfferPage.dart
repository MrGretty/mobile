import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Tradomatic/components/createOffer/OfferBloc.dart';
import 'package:Tradomatic/components/createOffer/OfferState.dart';
import 'package:Tradomatic/components/createOffer/OfferEvents.dart';

class CreateOfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<OfferBloc, OfferState>(builder: (context, state) {
          if (state == OfferStateAction()) {
            return RaisedButton(
                onPressed: () => BlocProvider.of<OfferBloc>(context).add(UpdateOffer(2)),
                child: Text(state.toString()));
          }
          
          return Text('test1');
        }),
      ),
    );
  }
}
