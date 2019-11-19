import 'package:bloc/bloc.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferState.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferEvents.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferModel.dart';
import 'package:flutter/cupertino.dart';

class OfferBloc extends Bloc<OfferEvents, OfferState> {
  final OfferModel model;

  OfferBloc({@required this.model});

  @override
  OfferState get initialState => OfferStateCommodity();

  @override
  Stream<OfferState> mapEventToState(OfferEvents event) async* {
    print(event);
    if (event is OperationChanged) {
      yield* _mapOperationChangedToState(event);
    }

    if (event is CurrencyBasisChanged) {
      yield* _mapCurrencyBasisChangedToState(event);
    }
  }

  Stream<OfferState> _mapOperationChangedToState(
      OperationChanged event) async* {
    model.setFields(operation: event.operation);
    yield OfferStateCurrencyBasises(operation: event.operation);
  }

  Stream<OfferState> _mapCurrencyBasisChangedToState(
      CurrencyBasisChanged event) async* {
    model.setFields(currency: event.currency, basis: event.basis);

    yield OfferStateCommodity(
        basis: event.basis,
        operation: model.operation,
        currency: event.currency);
  }
}
