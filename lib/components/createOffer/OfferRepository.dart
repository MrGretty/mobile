import 'package:equatable/equatable.dart';

class OfferRepository extends Equatable {
  final int operation;

  OfferRepository(this.operation);

  @override
  List<Object> get props => [operation];

}
