import 'package:equatable/equatable.dart';

abstract class OfferEvents extends Equatable {
  const OfferEvents();

  @override
  List<Object> get props => [];
}

class UpdateOffer extends OfferEvents {
  final int operation;
  
  const UpdateOffer(this.operation);

  @override
  List<Object> get props => [operation];

  @override
  String toString() => 'UpdateTodo { updatedTodo: $operation }';
}
