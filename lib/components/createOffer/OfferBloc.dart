import 'package:bloc/bloc.dart';
import 'package:Tradomatic/components/createOffer/OfferState.dart';
import 'package:Tradomatic/components/createOffer/OfferEvents.dart';
import 'package:Tradomatic/components/createOffer/OfferModel.dart';
import 'package:flutter/cupertino.dart';

class OfferBloc extends Bloc<OfferEvents, OfferState> {
  final OfferModel model;

  OfferBloc({@required this.model});

  @override
  OfferState get initialState => OfferStateAction();

  @override
  Stream<OfferState> mapEventToState(OfferEvents event) async* {
    if (event is UpdateOffer) {      
      model.setFields(operation: event.operation);
      print(model.props);
    }
  }
}
