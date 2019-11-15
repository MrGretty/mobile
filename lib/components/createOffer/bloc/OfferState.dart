import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class OfferState extends Equatable {
  const OfferState();
}

class OfferStateAction extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStateCurrencyBasises extends OfferState {
  final int operation;

  OfferStateCurrencyBasises({this.operation});

  @override
  List<Object> get props => [operation];
}

class OfferStateCommodity extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStateDetails extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStatePrice extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStatePeriod extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStateAdditionalParams extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStateSettings extends OfferState {
  @override
  List<Object> get props => [];
}

class OfferStateResolver extends OfferState {
  static next(state) {
    print(state);
  }

  // temp
  static prev(state) {
    if (state == OfferStateCurrencyBasises) return OfferStateAction();
    if (state == OfferStateCommodity) return OfferStateCurrencyBasises();
    if (state == OfferStateDetails) return OfferStateCommodity();

    return OfferStateAction();
  }

  @override
  List<Object> get props => [];
}
