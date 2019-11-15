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
