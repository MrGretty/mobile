import 'package:equatable/equatable.dart';

abstract class OfferState extends Equatable {
  const OfferState();

  List<Object> get props => [];
}

class OfferStateAction extends OfferState {}

class OfferStateCurrencyBasis extends OfferState {}

class OfferStateCommodity extends OfferState {}

class OfferStateDetails extends OfferState {}

class OfferStatePrice extends OfferState {}

class OfferStatePeriod extends OfferState {}

class OfferStateAdditionalParams extends OfferState {}

class OfferStateSettings extends OfferState {}
