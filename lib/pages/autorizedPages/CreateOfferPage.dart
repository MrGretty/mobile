import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:Tradomatic/components/createOffer/OfferBloc.dart';
import 'package:Tradomatic/components/createOffer/OfferModel.dart';
import 'package:Tradomatic/components/createOffer/OfferFormsView.dart';

class CreateOfferPage extends StatelessWidget {
  final model = OfferModel.initial();

  CreateOfferPage({Key key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => OfferBloc(model: model),
      child: OfferFormsView(),
    );
  }
}
