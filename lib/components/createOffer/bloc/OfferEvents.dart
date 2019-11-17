import 'package:equatable/equatable.dart';

abstract class OfferEvents extends Equatable {
  const OfferEvents();

  @override
  List<Object> get props => [];
}

class OperationChanged extends OfferEvents {
  final int operation;

  const OperationChanged(this.operation);

  @override
  List<Object> get props => [operation];

  @override
  String toString() => 'OperationChanged { operation: $operation }';
}

class CurrencyBasisChanged extends OfferEvents {
  final String currency;
  final int basis;

  CurrencyBasisChanged({this.currency, this.basis});

  @override
  List<Object> get props => [currency, basis];

  @override
  String toString() =>
      'CurrencyBasisChanged { basis: $basis, curreny: $currency }';
}
