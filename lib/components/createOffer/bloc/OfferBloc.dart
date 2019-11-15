import 'package:bloc/bloc.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferState.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferEvents.dart';
import 'package:Tradomatic/components/createOffer/bloc/OfferModel.dart';
import 'package:flutter/cupertino.dart';

class OfferBloc extends Bloc<OfferEvents, OfferState> {
  final OfferModel model;

  OfferBloc({@required this.model});

  @override
  OfferState get initialState => OfferStateAction();

  @override
  Stream<OfferState> mapEventToState(OfferEvents event) async* {
    print(event);
    if (event is OperationChanged) {
      yield* _mapOperationChangedToState(event);
    }

    if (event is StateChanged) {
      yield* _mapStateChangedToState(event);
    }
  }

  Stream<OfferState> _mapOperationChangedToState(
      OperationChanged event) async* {
    model.setFields(operation: event.operation);
    yield OfferStateCurrencyBasises(operation: event.operation);
  }

  Stream<OfferState> _mapStateChangedToState(StateChanged event) async* {
    if (event.action == 'next') {
      yield OfferStateResolver.next(event.state);
    } else {
      yield OfferStateResolver.prev(event.state);
    }
  }
}
