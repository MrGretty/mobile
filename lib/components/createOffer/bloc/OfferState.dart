import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:Tradomatic/constants/constants.dart' as Constants;

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

  getCurrencies() {
    return [Constants.Currencies.USD, Constants.Currencies.UAH];
  }

  getBasisesAccordingToOperation() {
    if (this.operation == Constants.OfferOperation.AUCTION)
      return [
        Constants.Basises.CPT,
        Constants.Basises.EXW,
        Constants.Basises.FCA,
        Constants.Basises.DAP,
        Constants.Basises.DAF
      ];

    return [
      Constants.Basises.FOB,
      Constants.Basises.CPT,
      Constants.Basises.EXW,
      Constants.Basises.FCA,
      Constants.Basises.DAP,
      Constants.Basises.DAF
    ];
  }

  @override
  List<Object> get props => [operation];
}

class OfferStateCommodity extends OfferState {
  final int operation, basis;
  final String currency;

  OfferStateCommodity({this.operation, this.basis, this.currency});

  @override
  List<Object> get props => [];
}

class OfferStateVolumeQualityCropYear extends OfferState {
  
  @override
  List<Object> get props => [];
}
