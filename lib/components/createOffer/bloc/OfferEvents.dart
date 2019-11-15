import 'package:Tradomatic/components/createOffer/bloc/block.dart';
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

class StateChanged extends OfferEvents {
  final OfferState state;
  final String action;

  StateChanged(this.state, this.action);
}
